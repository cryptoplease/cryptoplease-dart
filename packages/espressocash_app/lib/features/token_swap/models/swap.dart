import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana/encoder.dart';

import '../../currency/models/amount.dart';
import '../../transactions/models/tx_results.dart';
import 'swap_seed.dart';

part 'swap.freezed.dart';

@freezed
class Swap with _$Swap {
  const factory Swap({
    required String id,
    required DateTime created,
    required SwapStatus status,
    required SwapData data,
  }) = _Swap;
}

@freezed
class SwapData with _$SwapData {
  const factory SwapData({
    required CryptoAmount input,
    required CryptoAmount output,
    required CryptoAmount fee,
    required Slippage slippage,
  }) = _SwapData;
}

@freezed
class SwapStatus with _$SwapStatus {
  /// Tx is successfully created and ready to be sent.
  const factory SwapStatus.txCreated(
    SignedTx tx, {
    required BigInt slot,
  }) = SwapStatusTxCreated;

  /// Tx is successfully sent.
  const factory SwapStatus.txSent(
    SignedTx tx, {
    required BigInt slot,
  }) = SwapStatusTxSent;

  /// Final state. Tx is successfully confirmed and swap is completed.
  const factory SwapStatus.success(SignedTx tx) = SwapStatusSuccess;

  /// Failed to create the tx, a new tx should be created.
  const factory SwapStatus.txFailure({
    required TxFailureReason reason,
  }) = SwapStatusTxFailure;
}

extension SwapExt on Swap {
  bool get isCancelable => status is SwapStatusTxFailure;
}
