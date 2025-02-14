import 'package:espressocash_api/espressocash_api.dart';
import 'package:injectable/injectable.dart';

import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import '../models/swap_route.dart';
import '../models/swap_seed.dart';

@injectable
class RouteRepository {
  const RouteRepository(this._client);

  final EspressoCashClient _client;

  Future<SwapRoute> findRoute({
    required SwapSeed seed,
    required String userPublicKey,
  }) async {
    final inputToken = seed.input.token;
    final outputToken = seed.output.token;

    final route = await _client.getSwapRoute(
      SwapRouteRequestDto(
        amount: seed.input.value.toString(),
        inputToken: inputToken.forJupiter.address,
        outputToken: outputToken.forJupiter.address,
        slippage: seed.slippage.toDto(),
        match: SwapMatch.inAmount,
        userAccount: userPublicKey,
        asLegacyTx: false,
      ),
    );

    final updatedSeed = seed.copyWith(
      input: CryptoAmount(
        cryptoCurrency: CryptoCurrency(token: inputToken),
        value: int.parse(route.inAmount),
      ),
      output: CryptoAmount(
        cryptoCurrency: CryptoCurrency(token: outputToken),
        value: int.parse(route.outAmount),
      ),
    );

    return SwapRoute(
      seed: updatedSeed,
      fee: CryptoAmount(cryptoCurrency: Currency.usdc, value: route.feeInUsdc),
      platformFeeBps: route.platformFeeBps,
      priceImpact: route.priceImpact,
      providerLabel: route.providerLabel,
      encodedTx: route.encodedTx,
      slot: route.slot,
    );
  }
}

extension on Token {
  Token get forJupiter => this == Token.sol ? Token.wrappedSol : this;
}

extension on Slippage {
  SwapSlippage toDto() {
    switch (this) {
      case Slippage.zpOne:
        return SwapSlippage.zpOne;
      case Slippage.zpFive:
        return SwapSlippage.zpFive;
      case Slippage.onePercent:
        return SwapSlippage.onePercent;
    }
  }
}
