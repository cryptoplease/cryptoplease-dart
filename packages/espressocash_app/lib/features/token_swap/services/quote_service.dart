import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/flow.dart';
import '../../accounts/auth_scope.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import '../data/route_repository.dart';
import '../models/swap_route.dart';
import '../models/swap_seed.dart';

typedef QuoteState = Flow<Exception, SwapRoute>;

@Singleton(scope: authScope)
class QuoteService extends ValueNotifier<QuoteState> {
  QuoteService(this._repository, this._wallet) : super(const Flow.initial());

  final RouteRepository _repository;
  final ECWallet _wallet;

  static const _quoteValidityDuration = Duration(seconds: 15);

  Timer? _refreshTimer;
  Timer? _debounceTimer;

  DateTime? _expiresAt;

  DateTime? get expiresAt => _expiresAt;

  void updateInput({
    required CryptoAmount inputAmount,
    required Token outputToken,
    required Slippage slippage,
  }) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(
      const Duration(milliseconds: 500),
      () => _handleInputChanged(
        SwapSeed(
          output: Amount.zero(
            currency: CryptoCurrency(token: outputToken),
          ) as CryptoAmount,
          input: inputAmount,
          slippage: slippage,
        ),
      ),
    );
  }

  Future<void> _handleInputChanged(SwapSeed input) async {
    _refreshTimer?.cancel();

    if (input.input.decimal == Decimal.zero) {
      value = const Flow.initial();

      return;
    }

    await _fetchQuote(input);

    _refreshTimer = Timer.periodic(_quoteValidityDuration, (_) {
      _fetchQuote(input);
    });
  }

  Future<void> _fetchQuote(SwapSeed input) async {
    value = const Flow.processing();
    try {
      final route = await _repository.findRoute(
        seed: input,
        userPublicKey: _wallet.address,
      );
      _expiresAt = DateTime.now().add(_quoteValidityDuration);
      value = Flow.success(route);
    } on Exception catch (error) {
      value = Flow.failure(error);
    }
    notifyListeners();
  }

  void clear() {
    _refreshTimer?.cancel();
    _debounceTimer?.cancel();
    value = const Flow.initial();
  }

  @override
  @disposeMethod
  void dispose() {
    super.dispose();

    _refreshTimer?.cancel();
    _debounceTimer?.cancel();
  }
}
