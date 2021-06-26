part of 'decoder.dart';

@JsonSerializable(createToJson: false)
class ConfirmedSignature {
  ConfirmedSignature({
    required this.signature,
    required this.slot,
    this.err,
    this.memo,
    this.blockTime,
  });

  factory ConfirmedSignature.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedSignatureFromJson(json);

  final String signature;
  final int slot;
  final Object? err;
  final String? memo;
  final int? blockTime;

  @override
  String toString() => signature;
}

@JsonSerializable(createToJson: false)
class ConfirmedSignaturesResponse
    extends JsonRpcResponse<Iterable<ConfirmedSignature>> {
  ConfirmedSignaturesResponse(Iterable<ConfirmedSignature> result)
      : super(result: result);

  factory ConfirmedSignaturesResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedSignaturesResponseFromJson(json);
}
