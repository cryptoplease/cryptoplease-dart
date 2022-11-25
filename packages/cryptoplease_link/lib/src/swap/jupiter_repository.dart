import 'package:collection/collection.dart';
import 'package:cryptoplease_api/cryptoplease_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jupiter_repository.freezed.dart';

@freezed
class RouteInfo with _$RouteInfo {
  const factory RouteInfo({
    required String amount,
    required String inAmount,
    required String outAmount,
    required String jupiterTx,
    required num totalFees,
  }) = _RouteInfo;
}

Future<RouteInfo> getJupiterRoute(SwapRouteRequestDto request) async {
  final account = request.userAccount;

  final quote = await _swapClient.getQuote(
    QuoteRequestDto(
      amount: request.amount,
      inputMint: request.inputToken,
      outputMint: request.outputToken,
      slippageBps: request.slippage.toJupiterBps(),
      swapMode: request.match.toJupiterMode(),
      userPublicKey: account,
      enforceSingleTx: true,
    ),
  );

  final bestRoute = quote.routes.firstOrNull;

  if (bestRoute == null) {
    throw Exception('No route found for given input and output');
  }

  final feeInSol = bestRoute.fees?.totalFeeAndDeposits;

  if (feeInSol == null) {
    throw Exception('Route has no fee object');
  }

  final tx = await _swapClient
      .getSwapTransactions(
        JupiterSwapRequestDto(userPublicKey: account, route: bestRoute),
      )
      .then(
        (jupiterTxs) => [
          jupiterTxs.setupTransaction,
          jupiterTxs.swapTransaction,
          jupiterTxs.cleanupTransaction,
        ],
      )
      .then((txs) => txs.whereNotNull().singleOrNull);

  if (tx == null) {
    throw Exception('Swap only supports single transaction');
  }

  return RouteInfo(
    amount: bestRoute.amount,
    inAmount: bestRoute.inAmount,
    outAmount: bestRoute.outAmount,
    jupiterTx: tx,
    totalFees: feeInSol,
  );
}

final _swapClient = JupiterAggregatorClient();

extension SwapSlippageExt on SwapSlippage {
  int toJupiterBps() {
    double slippage;
    switch (this) {
      case SwapSlippage.zpOne:
        slippage = 0.1;
        break;
      case SwapSlippage.zpFive:
        slippage = 0.5;
        break;
      case SwapSlippage.onePercent:
        slippage = 1.0;
        break;
    }

    return slippage.ceil().toDouble().toInt() * 100;
  }
}

extension SwapMatchExt on SwapMatch {
  SwapMode toJupiterMode() {
    switch (this) {
      case SwapMatch.inAmount:
        return SwapMode.exactIn;
      case SwapMatch.outAmount:
        return SwapMode.exactOut;
    }
  }
}
