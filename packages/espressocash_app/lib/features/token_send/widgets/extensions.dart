import 'package:flutter/material.dart';
import 'package:solana/solana.dart';

import '../../../di.dart';
import '../../../ui/loader.dart';
import '../../accounts/models/account.dart';
import '../../currency/models/amount.dart';
import '../services/token_send_service.dart';

extension BuildContextExt on BuildContext {
  Future<String> createTokenSend({
    required CryptoAmount amount,
    required Ed25519HDPublicKey receiver,
  }) =>
      runWithLoader(this, () async {
        final payment = await sl<TokenSendService>().create(
          account: sl<MyAccount>().wallet,
          amount: amount,
          receiver: receiver,
        );

        return payment.id;
      });
}
