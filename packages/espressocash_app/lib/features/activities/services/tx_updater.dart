import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:dfunc/dfunc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:solana/base58.dart';
import 'package:solana/dto.dart';
import 'package:solana/encoder.dart';
import 'package:solana/solana.dart';

import '../../../utils/errors.dart';
import '../../accounts/auth_scope.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/data/token_repository.dart';
import '../../tokens/token.dart';
import '../data/transaction_repository.dart';
import '../models/transaction.dart';

typedef TransactionUpdateResult = ({
  List<TxCommon> txs,
  bool hasGap,
});

@Singleton(scope: authScope)
class TxUpdater implements Disposable {
  TxUpdater(this._client, this._wallet, this._repo);

  final SolanaClient _client;
  final ECWallet _wallet;
  final TransactionRepository _repo;

  final AsyncCache<void> _cache = AsyncCache.ephemeral();

  @PostConstruct()
  void init() {
    call();
  }

  Future<void> call() => _cache.fetch(_updateAllTransactions);

  Future<void> _updateAllTransactions() async {
    try {
      final mostRecentTxId = await _repo.mostRecentTxId();

      final usdcTxs = await _fetchUsdcTransactions(mostRecentTxId);

      final nonUsdcTxs = await _fetchNonUsdcTransactions(mostRecentTxId);

      final allTxs = [...usdcTxs.txs, ...nonUsdcTxs.txs];

      if (allTxs.isNotEmpty) {
        await _repo.saveAll(
          allTxs,
          clear: usdcTxs.hasGap || nonUsdcTxs.hasGap,
        );
      }
    } on Exception catch (exception) {
      reportError(exception);
    }
  }

  Future<TransactionUpdateResult> _fetchUsdcTransactions(
    String? mostRecentTxId,
  ) async {
    final usdcTokenAccount = await findAssociatedTokenAddress(
      owner: _wallet.publicKey,
      mint: Ed25519HDPublicKey.fromBase58(Token.usdc.address),
    );

    final details = await _client.rpcClient.getTransactionsList(
      usdcTokenAccount,
      limit: _usdcFetchLimit,
      until: mostRecentTxId,
      encoding: Encoding.base64,
      commitment: Commitment.confirmed,
    );

    final txs = await Future.wait(
      details.map((it) => it.toFetched(usdcTokenAccount, Token.usdc.address)),
    );
    final hasGap = mostRecentTxId != null && txs.length == _usdcFetchLimit;

    return (
      txs: txs.whereNotNull().toList(),
      hasGap: hasGap,
    );
  }

  Future<TransactionUpdateResult> _fetchNonUsdcTransactions(
    String? mostRecentTxId,
  ) async {
    final tokenAccounts = await _getAllTokenAccounts(_wallet.publicKey);

    final nonUsdcTokenAccounts = tokenAccounts
        .where((account) => account.mintAddress != Token.usdc.address)
        .toList();

    final allAddresses = [
      _wallet.publicKey,
      ...nonUsdcTokenAccounts.map((a) => a.account),
    ];

    final details = await _client.rpcClient.getTransactionListForAddresses(
      allAddresses,
      limit: _tokensFetchLimit,
      until: mostRecentTxId,
      commitment: Commitment.confirmed,
      encoding: Encoding.base64,
    );

    final txs = await Future.wait(
      details.map((detail) async {
        final tx = SignedTx.fromBytes(
          (detail.transaction as RawTransaction).data,
        );

        final tokenAccount = nonUsdcTokenAccounts.firstWhereOrNull(
          (acc) => tx.compiledMessage.accountKeys.contains(acc.account),
        );

        if (tokenAccount != null) {
          return detail.toFetched(
            tokenAccount.account,
            tokenAccount.mintAddress,
          );
        }

        return tx.compiledMessage.accountKeys.contains(_wallet.publicKey)
            ? detail.toFetched(_wallet.publicKey, Token.sol.address)
            : null;
      }),
    );

    final validTxs = txs.whereNotNull().toList();

    final uniqueTxs = validTxs.toSet().toList();

    final txsByAddress = details.groupListsBy((detail) {
      final tx = SignedTx.fromBytes(
        (detail.transaction as RawTransaction).data,
      );

      return tx.compiledMessage.accountKeys.firstWhere(
        allAddresses.contains,
        orElse: () => _wallet.publicKey,
      );
    });

    final hasGap =
        txsByAddress.values.any((txs) => txs.length >= _tokensFetchLimit);

    return (
      txs: uniqueTxs,
      hasGap: mostRecentTxId != null && hasGap,
    );
  }

  Future<List<_TokenAccountInfo>> _getAllTokenAccounts(
    Ed25519HDPublicKey owner,
  ) =>
      _client.rpcClient
          .getTokenAccountsByOwner(
            owner.toBase58(),
            encoding: Encoding.base64,
            const TokenAccountsFilter.byProgramId(TokenProgram.programId),
          )
          .letAsync(
            (response) => response.value.map((account) {
              final data = account.account.data as BinaryAccountData?;
              if (data == null) {
                throw Exception('Account info or data is null');
              }
              final mintAddressBytes = data.data.sublist(0, 32);
              final mintAddress = base58encode(mintAddressBytes);

              return _TokenAccountInfo(
                account: Ed25519HDPublicKey.fromBase58(account.pubkey),
                mintAddress: mintAddress,
              );
            }).toList(),
          );

  @override
  Future<void> onDispose() => _repo.clear();
}

extension on TransactionDetails {
  Future<TxCommon?> toFetched(
    Ed25519HDPublicKey tokenAccount,
    String? tokenAddress,
  ) async {
    final rawTx = transaction as RawTransaction;
    final tx = SignedTx.fromBytes(rawTx.data);
    final accountIndex =
        tx.compiledMessage.accountKeys.indexWhere((e) => e == tokenAccount);

    int? getBalanceDifference(
      List<Object>? preBalances,
      List<Object>? postBalances,
    ) {
      if (preBalances != null && postBalances != null) {
        final preBalance = preBalances[accountIndex] as int;
        final postBalance = postBalances[accountIndex] as int;
        if (preBalance == 0 && postBalance == 0) return null;

        return postBalance - preBalance;
      }

      return null;
    }

    int? getTokenBalanceDifference(
      List<TokenBalance>? preBalances,
      List<TokenBalance>? postBalances,
    ) {
      final preBalance = preBalances
          ?.firstWhereOrNull(
            (e) => e.mint == tokenAddress && e.accountIndex == accountIndex,
          )
          ?.uiTokenAmount
          .amount;

      final postBalance = postBalances
          ?.firstWhereOrNull(
            (e) => e.mint == tokenAddress && e.accountIndex == accountIndex,
          )
          ?.uiTokenAmount
          .amount;

      final preReturnValue = preBalance != null ? int.parse(preBalance) : 0;
      final postReturnValue = postBalance != null ? int.parse(postBalance) : 0;

      if (preReturnValue == 0 && postReturnValue == 0) return null;

      return postReturnValue - preReturnValue;
    }

    final rawAmount = tokenAddress == Token.sol.address
        ? getBalanceDifference(meta?.preBalances, meta?.postBalances)
        : getTokenBalanceDifference(
            meta?.preTokenBalances,
            meta?.postTokenBalances,
          );

    if (rawAmount == null || rawAmount == 0) return null;

    final amount = await rawAmount.let((amount) async {
      final tokenRepository = GetIt.I<TokenRepository>();
      final cryptoCurrency = tokenAddress != null
          ? tokenAddress == Token.sol.address
              ? const CryptoCurrency(token: Token.sol)
              : CryptoCurrency(
                  token:
                      await tokenRepository.getToken(tokenAddress) ?? Token.unk,
                )
          : const CryptoCurrency(token: Token.unk);

      return CryptoAmount(
        value: amount,
        cryptoCurrency: cryptoCurrency,
      );
    });

    return TxCommon(
      tx,
      status:
          meta?.err == null ? TxCommonStatus.success : TxCommonStatus.failure,
      created: blockTime
          ?.let((it) => DateTime.fromMillisecondsSinceEpoch(1000 * it)),
      amount: amount,
    );
  }
}

class _TokenAccountInfo {
  const _TokenAccountInfo({
    required this.account,
    required this.mintAddress,
  });

  final Ed25519HDPublicKey account;
  final String mintAddress;
}

const _tokensFetchLimit = 15;
const _usdcFetchLimit = 50;
