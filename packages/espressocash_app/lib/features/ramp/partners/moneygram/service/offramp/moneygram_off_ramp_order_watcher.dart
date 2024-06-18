import 'dart:async';

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../data/db/db.dart';
import '../../../../../accounts/auth_scope.dart';
import '../../../../../ramp_partner/models/ramp_partner.dart';
import '../../../../../stellar/models/stellar_wallet.dart';
import '../../../../../stellar/service/stellar_client.dart';
import '../../data/dto.dart';
import '../../data/moneygram_client.dart';

/// Watches for [OffRampOrderStatus.waitingForPartner]
@Singleton(scope: authScope)
class MoneygramOffRampOrderWatcher {
  MoneygramOffRampOrderWatcher(
    this._db,
    this._apiClient,
    this._stellarClient,
    this._wallet,
  );

  final MyDatabase _db;
  final MoneygramApiClient _apiClient;
  final StellarClient _stellarClient;
  final StellarWallet _wallet;

  StreamSubscription<void>? _subscription;

  @PostConstruct()
  void init() {
    final processing = _db.select(_db.offRampOrderRows)
      ..where(
        (tbl) =>
            tbl.status.equalsValue(OffRampOrderStatus.waitingForPartner) &
            tbl.partner.equalsValue(RampPartner.moneygram),
      );

    final orders = processing.watch();

    _subscription = orders.listen((orderList) {
      orderList.forEach(processOrder);
    });
  }

  Future<void> processOrder(OffRampOrderRow order) async {
    final orderId = order.partnerOrderId;
    String? token = order.authToken;

    token ??= await _stellarClient.fetchToken(wallet: _wallet.keyPair);

    final transaction = await _apiClient
        .fetchTransaction(
          id: orderId,
          authHeader: token.toAuthHeader(),
        )
        .then((e) => e.transaction);

    if (transaction.status == MgStatus.pendingUserTransferComplete) {
      updateOrderStatus(order.id);
    }
  }

  void updateOrderStatus(String id) {
    _db.update(_db.offRampOrderRows)
      ..where((tbl) => tbl.id.equals(id))
      ..write(
        const OffRampOrderRowsCompanion(
          status: Value(OffRampOrderStatus.waitingPickup),
        ),
      );
  }

  @disposeMethod
  void dispose() {
    _subscription?.cancel();
    _subscription = null;
  }
}
