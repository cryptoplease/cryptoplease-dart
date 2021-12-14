import 'package:solana/src/constants.dart';
import 'package:solana/src/crypto/ed25519_hd_keypair.dart';
import 'package:solana/src/exceptions/no_associated_token_account_exception.dart';
import 'package:solana/src/rpc/dto/parsed_message/parsed_instruction.dart';
import 'package:solana/src/rpc/dto/parsed_message/parsed_spl_token_instruction.dart';
import 'package:solana/src/rpc/dto/parsed_message/parsed_system_instruction.dart';
import 'package:solana/src/rpc/dto/parsed_message/spl_token_transfer_info.dart';
import 'package:solana/src/rpc/rpc.dart';
import 'package:solana/src/spl_token/spl_token.dart';
import 'package:solana/src/subscription_client/subscription_client.dart';
import 'package:solana/src/wallet.dart';
import 'package:test/test.dart';

import 'config.dart';

void main() {
  late final RpcClient rpcClient;
  late final Wallet source;
  late final Wallet destination;
  late final SubscriptionClient subscriptionClient;
  late SplToken token;

  setUpAll(() async {
    final signer = await Ed25519HDKeyPair.random();
    subscriptionClient = await SubscriptionClient.connect(devnetWebsocketUrl);
    rpcClient = RpcClient(devnetRpcUrl);
    source = Wallet(
      signer,
      rpcClient: rpcClient,
      subscriptionClient: subscriptionClient,
    );
    destination = Wallet(
      await Ed25519HDKeyPair.random(),
      rpcClient: rpcClient,
      subscriptionClient: subscriptionClient,
    );
    // Add tokens to the sender
    await source.requestAirdrop(lamports: 100 * lamportsPerSol);
    token = await rpcClient.initializeMint(
      owner: signer,
      decimals: 2,
      subscriptionClient: subscriptionClient,
    );
    final associatedAccount = await source.createAssociatedTokenAccount(
      mint: token.mint,
      funder: source,
    );
    await token.mintTo(
      destination: associatedAccount.pubkey,
      amount: _tokenMintAmount,
    );
  });

  test('Get wallet lamports', () async {
    expect(await source.getLamports(), greaterThan(0));
  });

  test('Transfer SOL', () async {
    final signature = await source.transfer(
      destination: destination.address,
      lamports: lamportsPerSol,
    );
    expect(signature, isNotNull);
    expect(await destination.getLamports(), equals(lamportsPerSol));
  });

  test('Transfer SOL with memo', () async {
    const memoText = 'Memo test string...';

    final signature = await source.transferWithMemo(
      destination: destination.address,
      lamports: _lamportsTransferAmount,
      memo: memoText,
    );
    expect(signature, isNotNull);

    // FIXME: check that it actual is this type
    final result = await rpcClient.getTransaction(
      signature.toString(),
      encoding: Encoding.jsonParsed,
    );

    expect(result, isNotNull);
    expect(result?.transaction, isNotNull);
    final transaction = result!.transaction;
    expect(transaction.message, isNotNull);
    final txMessage = transaction.message;
    expect(txMessage.instructions, isNotNull);
    final instructions = txMessage.instructions;
    expect(instructions.length, equals(2));
    expect(instructions[0], const TypeMatcher<ParsedInstructionSystem>());
    final parsedInstructionSystem = instructions[0] as ParsedInstructionSystem;
    expect(
        parsedInstructionSystem.parsed, isA<ParsedSystemTransferInstruction>());
    final parsedTransferInstruction =
        parsedInstructionSystem.parsed as ParsedSystemTransferInstruction;
    expect(parsedTransferInstruction.info.lamports,
        equals(_lamportsTransferAmount));
    expect(instructions[1], const TypeMatcher<ParsedInstructionMemo>());
    final memoInstruction = instructions[1] as ParsedInstructionMemo;
    expect(memoInstruction.memo, equals(memoText));
  });

  test('Get a token balance', () async {
    final wallet = Wallet(
      await Ed25519HDKeyPair.random(),
      rpcClient: rpcClient,
      subscriptionClient: subscriptionClient,
    );
    expect(wallet.hasAssociatedTokenAccount(mint: token.mint),
        completion(equals(false)));

    final signature = await wallet.requestAirdrop(
      lamports: lamportsPerSol,
      commitment: Commitment.finalized,
    );
    expect(signature, isNotNull);
    expect(await wallet.getLamports(), equals(lamportsPerSol));

    await wallet.createAssociatedTokenAccount(mint: token.mint);
    final hasAssociatedTokenAccount = await wallet.hasAssociatedTokenAccount(
      mint: token.mint,
    );

    expect(hasAssociatedTokenAccount, equals(true));

    final tokenBalance = await wallet.getTokenBalance(mint: token.mint);
    expect(tokenBalance.decimals, equals(token.decimals));
    expect(tokenBalance.amount, equals('0'));
  }, timeout: const Timeout(Duration(minutes: 2)));

  test('Fails SPL transfer if recipient has no associated token account',
      () async {
    final wallet = Wallet(
      await Ed25519HDKeyPair.random(),
      rpcClient: rpcClient,
      subscriptionClient: subscriptionClient,
    );
    expect(
      source.transferSplToken(
        destination: wallet.address,
        amount: 100,
        mint: token.mint,
      ),
      throwsA(isA<NoAssociatedTokenAccountException>()),
    );
  });

  test('Transfer SPL tokens successfully', () async {
    final wallet = Wallet(
      await Ed25519HDKeyPair.random(),
      rpcClient: rpcClient,
      subscriptionClient: subscriptionClient,
    );
    await wallet.createAssociatedTokenAccount(
      mint: token.mint,
      funder: source,
    );
    final signature = await source.transferSplToken(
      destination: wallet.address,
      amount: 40,
      mint: token.mint,
    );
    expect(signature, isNotNull);

    final tokenBalance = await wallet.getTokenBalance(mint: token.mint);
    expect(tokenBalance.amount, equals('40'));
  }, timeout: const Timeout(Duration(minutes: 2)));

  test('Transfer SPL tokens with memo', () async {
    final wallet = Wallet(
      await Ed25519HDKeyPair.random(),
      rpcClient: rpcClient,
      subscriptionClient: subscriptionClient,
    );
    // Create the associated account for the recipient
    await wallet.createAssociatedTokenAccount(
      mint: token.mint,
      funder: source,
    );
    const memoText = 'Memo test string...';

    final signature = await source.transferSplTokenWithMemo(
      mint: token.mint,
      destination: wallet.address,
      amount: 40,
      memo: memoText,
    );
    expect(signature, isNotNull);

    // FIXME: check that this is of the correct type
    final result = await rpcClient.getTransaction(
      signature.toString(),
      encoding: Encoding.jsonParsed,
    );

    expect(result, isNotNull);
    expect(result?.transaction, isNotNull);
    final transaction = result!.transaction;
    expect(transaction.message, isNotNull);
    final txMessage = transaction.message;
    expect(txMessage.instructions, isNotNull);
    final instructions = txMessage.instructions;
    expect(instructions.length, equals(2));
    expect(instructions[0], const TypeMatcher<ParsedInstructionSplToken>());
    expect(instructions[1], const TypeMatcher<ParsedInstructionMemo>());
    final memoInstruction = instructions[1] as ParsedInstructionMemo;
    expect(memoInstruction.memo, equals(memoText));
    final splTokenInstruction = instructions[0] as ParsedInstructionSplToken;
    expect(
        splTokenInstruction.parsed, isA<ParsedSplTokenTransferInstruction>());
    final parsedSplTokenInstruction =
        splTokenInstruction.parsed as ParsedSplTokenTransferInstruction;
    expect(parsedSplTokenInstruction.type, equals('transfer'));
    expect(parsedSplTokenInstruction.info, isA<SplTokenTransferInfo>());
    expect(parsedSplTokenInstruction.info.amount, '40');
    final tokenBalance = await wallet.getTokenBalance(mint: token.mint);
    expect(tokenBalance.amount, equals('40'));
  }, timeout: const Timeout(Duration(minutes: 2)));
}

const _tokenMintAmount = 1000;
const _lamportsTransferAmount = 5 * lamportsPerSol;
