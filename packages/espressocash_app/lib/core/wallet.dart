import 'package:flutter/foundation.dart';
import 'package:solana/encoder.dart';
import 'package:solana/solana.dart';

import '../features/accounts/models/ec_wallet.dart';

Future<LocalWallet> createLocalWallet({required String mnemonic}) async {
  final wallet = await compute(_createKeyPair, KeyPairParams(mnemonic, 0, 0));

  return LocalWallet(wallet);
}

Future<Ed25519HDKeyPair> _createKeyPair(KeyPairParams params) =>
    Ed25519HDKeyPair.fromMnemonic(
      params.mnemonic,
      change: params.change,
      account: params.account,
    );

@immutable
class KeyPairParams {
  const KeyPairParams(this.mnemonic, this.account, this.change);

  final String mnemonic;
  final int account;
  final int change;
}

Future<Wallet> walletFromParts({
  required String firstPart,
  required String secondPart,
}) {
  final keyPart1 = ByteArray.fromBase58(firstPart).toList();
  final keyPart2 = ByteArray.fromBase58(secondPart).toList();

  return Wallet.fromPrivateKeyBytes(privateKey: keyPart1 + keyPart2);
}

Future<Wallet> walletFromKey({
  required String encodedKey,
}) {
  final key = ByteArray.fromBase58(encodedKey).toList();

  return Wallet.fromPrivateKeyBytes(privateKey: key);
}
