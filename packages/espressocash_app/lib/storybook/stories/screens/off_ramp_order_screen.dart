import 'package:storybook_flutter/storybook_flutter.dart';

import '../../../data/db/db.dart';
import '../../../features/currency/models/amount.dart';
import '../../../features/currency/models/currency.dart';
import '../../../features/ramp/screens/off_ramp_order_screen.dart';
import '../../../features/ramp_partner/models/ramp_partner.dart';
import '../../utils.dart';

final offRampOrderScreenStory = Story(
  name: 'Screens/OffRampOrderScreen',
  builder: (context) => OffRampOrderScreenContent(
    order: (
      id: 'ORDER_ID',
      created: DateTime.now(),
      status: context.knobs.options(
        label: 'Status',
        initial: OffRampOrderStatus.depositTxRequired,
        options: OffRampOrderStatus.values.toOptions(),
      ),
      amount: const CryptoAmount(
        value: 10000000,
        cryptoCurrency: Currency.usdc,
      ),
      receiveAmount: null,
      partner: RampPartner.scalex,
      resolved: null,
      partnerOrderId: 'PARTNER_ORDER_ID',
      depositAddress: null,
      fee: null,
      withdrawAnchorAccount: null,
      withdrawUrl: null,
      authToken: null,
      moreInfoUrl: null,
      referenceNumber: null,
      bridgeAmount: null,
    ),
  ),
);
