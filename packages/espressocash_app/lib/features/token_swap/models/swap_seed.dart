import 'package:freezed_annotation/freezed_annotation.dart';

import '../../currency/models/amount.dart';

part 'swap_seed.freezed.dart';

enum Slippage { zpOne, zpFive, onePercent }

@freezed
class SwapSeed with _$SwapSeed {
  const factory SwapSeed({
    required CryptoAmount input,
    required CryptoAmount output,
    required Slippage slippage,
  }) = _SwapSeed;
}

extension SlippageX on Slippage {
  double toPercent() {
    switch (this) {
      case Slippage.zpOne:
        return 0.1;
      case Slippage.zpFive:
        return 0.5;
      case Slippage.onePercent:
        return 1.0;
    }
  }
}
