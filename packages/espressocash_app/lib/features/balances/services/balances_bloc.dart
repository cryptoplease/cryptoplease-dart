import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:dfunc/dfunc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:solana/dto.dart';
import 'package:solana/solana.dart';

import '../../../utils/disposable_bloc.dart';
import '../../../utils/processing_state.dart';
import '../../accounts/auth_scope.dart';
import '../../analytics/analytics_manager.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/data/token_repository.dart';
import '../../tokens/token.dart';
import '../data/repository.dart';

part 'balances_bloc.freezed.dart';

final _logger = Logger('BalancesBloc');
typedef BalancesState = ProcessingState;

@Singleton(scope: authScope)
class BalancesBloc extends Bloc<BalancesEvent, BalancesState>
    with DisposableBloc {
  BalancesBloc(
    this._solanaClient,
    this._tokenRepository,
    this._tokensBalanceRepository,
    this._analyticsManager,
  ) : super(const ProcessingStateNone()) {
    on<BalancesEventRequested>(_handleRequested, transformer: droppable());
  }

  final SolanaClient _solanaClient;
  final TokenRepository _tokenRepository;
  final TokenBalancesRepository _tokensBalanceRepository;
  final AnalyticsManager _analyticsManager;

  Future<void> _handleRequested(
    BalancesEventRequested event,
    Emitter<BalancesState> emit,
  ) async {
    try {
      emit(const ProcessingState.processing());
      final address = event.address;

      final sol = await _solanaClient.getSolBalance(address);

      final allAccounts = await _solanaClient.getSplAccounts(address);
      final mainAccounts = await Future.wait<_MainTokenAccount?>(
        allAccounts.map((programAccount) async {
          final account = programAccount.account;
          final data = account.data;

          if (data is ParsedAccountData) {
            return data.maybeWhen<Future<_MainTokenAccount?>>(
              splToken: (parsed) => parsed.maybeMap<Future<_MainTokenAccount?>>(
                account: (a) => _MainTokenAccount.create(
                  programAccount.pubkey,
                  a.info,
                  TokenProgramType.tokenProgram,
                  _tokenRepository,
                ),
                orElse: () async => null,
              ),
              token2022: (parsed) => parsed.maybeMap(
                account: (a) => _MainTokenAccount.create(
                  programAccount.pubkey,
                  a.info,
                  TokenProgramType.token2022Program,
                  _tokenRepository,
                ),
                orElse: () async => null,
              ),
              orElse: () async => null,
            );
          }
        }),
      ).then(compact);

      final tokenBalances = mainAccounts.map(
        (a) => CryptoAmount(
          value: int.parse(a.info.tokenAmount.amount),
          cryptoCurrency: CryptoCurrency(token: a.token),
        ),
      );

      final usdcBalance = tokenBalances.firstWhereOrNull(
        (balance) => balance.cryptoCurrency.token == Token.usdc,
      );

      if (isClosed) return;

      emit(const ProcessingState.none());

      if (usdcBalance != null) {
        _analyticsManager.setUsdcBalance(usdcBalance.decimal);
      }

      await _tokensBalanceRepository.save([...tokenBalances, sol]);
    } on Exception catch (exception) {
      _logger.severe('Failed to fetch balances', exception);

      if (isClosed) return;

      emit(const ProcessingState.error(BalancesRequestException()));
      emit(const ProcessingState.none());
    }
  }
}

class _MainTokenAccount {
  const _MainTokenAccount._(this.pubKey, this.info, this.token);

  static Future<_MainTokenAccount?> create(
    String pubKey,
    SplTokenAccountDataInfo info,
    TokenProgramType tokenProgramType,
    TokenRepository tokenRepository,
  ) async {
    final expectedPubKey = await findAssociatedTokenAddress(
      owner: Ed25519HDPublicKey.fromBase58(info.owner),
      mint: Ed25519HDPublicKey.fromBase58(info.mint),
      tokenProgramType: tokenProgramType,
    );

    if (expectedPubKey.toBase58() != pubKey) return null;

    final Token? token = await tokenRepository.getToken(info.mint);

    if (token == null) return null;

    return _MainTokenAccount._(pubKey, info, token);
  }

  final Token token;
  final SplTokenAccountDataInfo info;
  final String pubKey;
}

class BalancesRequestException implements Exception {
  const BalancesRequestException();
}

@freezed
sealed class BalancesEvent with _$BalancesEvent {
  const factory BalancesEvent.refreshRequested({
    required String address,
  }) = BalancesEventRequested;
}

extension on SolanaClient {
  Future<CryptoAmount> getSolBalance(String address) async {
    final lamports = await rpcClient
        .getBalance(
          address,
          commitment: Commitment.confirmed,
        )
        .value;

    return CryptoAmount(value: lamports, cryptoCurrency: Currency.sol);
  }

  Future<Iterable<ProgramAccount>> getSplAccounts(String address) async {
    final accounts = [
      rpcClient.getTokenAccountsByOwner(
        address,
        const TokenAccountsFilter.byProgramId(TokenProgram.programId),
        commitment: Commitment.confirmed,
        encoding: Encoding.jsonParsed,
      ),
      rpcClient.getTokenAccountsByOwner(
        address,
        const TokenAccountsFilter.byProgramId(Token2022Program.programId),
        commitment: Commitment.confirmed,
        encoding: Encoding.jsonParsed,
      ),
    ];

    final results = await Future.wait(accounts);

    return [...results[0].value, ...results[1].value];
  }
}
