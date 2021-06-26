part of 'decoder.dart';

/// An instruction which is part of a [TxMessage]
@Freezed(unionKey: 'program', fallbackUnion: 'unsupported')
class TxInstruction with _$TxInstruction {
  const factory TxInstruction.system({
    required String programId,
    required SystemInstruction parsed,
  }) = TxSystemInstruction;

  /// Instruction representing a memo with content [memo]
  @FreezedUnionValue('spl-memo')
  const factory TxInstruction.memo({
    @JsonKey(name: 'parsed') required String? memo,
  }) = TxMemoInstruction;

  const factory TxInstruction.unsupported({
    required String program,
  }) = TxUnsupportedInstruction;

  factory TxInstruction.fromJson(Map<String, dynamic> json) =>
      _$TxInstructionFromJson(json);
}

@Freezed(unionKey: 'type', fallbackUnion: 'unsupported')
class SystemInstruction with _$SystemInstruction {
  /// Transfer instruction data for a transfer of [info.lamports]
  /// from [info.source] to [info.destination]
  const factory SystemInstruction.transfer({
    required TransferInfo info,
  }) = TxSystemInstructionTransfer;

  /// Instructions that we haven't implemented yet
  const factory SystemInstruction.unsupported({
    required String type,
  }) = TxSystemInstructionUnsupported;

  factory SystemInstruction.fromJson(Map<String, dynamic> json) =>
      _$SystemInstructionFromJson(json);
}

/// Information about a transfer of [lamports] from
/// [source] to [destination]
@freezed
class TransferInfo with _$TransferInfo {
  const factory TransferInfo({
    required int lamports,
    required String source,
    required String destination,
  }) = _TransferInfo;

  factory TransferInfo.fromJson(Map<String, dynamic> json) =>
      _$TransferInfoFromJson(json);
}
