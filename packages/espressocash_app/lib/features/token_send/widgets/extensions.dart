import 'package:flutter/material.dart';
import 'package:solana/solana.dart';

import '../../../di.dart';
import '../../../ui/loader.dart';
import '../../accounts/models/account.dart';
import '../../currency/models/amount.dart';
import '../../outgoing_direct_payments/services/odp_service.dart';

extension BuildContextExt on BuildContext {
  Future<String> createTokenSend({
    required CryptoAmount amount,
    required Ed25519HDPublicKey receiver,
  }) =>
      runWithLoader(this, () async {
        final payment = await sl<ODPService>().create(
          account: sl<MyAccount>().wallet,
          amount: amount,
          receiver: receiver,
          reference: null,
        );

        return payment.id;
      });
}
