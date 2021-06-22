import 'package:json_annotation/json_annotation.dart';
import 'package:solana/src/types/json_rpc_response_object.dart';

part 'signature_status.g.dart';

enum Commitment { processed, confirmed, finalized }

@JsonSerializable(createToJson: false)
class SignatureStatus {
  SignatureStatus({
    required this.slot,
    this.confirmations,
    this.err,
    this.confirmationStatus,
  });

  factory SignatureStatus.fromJson(Map<String, dynamic> json) =>
      _$SignatureStatusFromJson(json);

  final int slot;
  final int? confirmations;
  final Object? err;
  final Commitment? confirmationStatus;

  @override
  String toString() => confirmationStatus.toString();
}

@JsonSerializable(createToJson: false)
class SignatureStatusesResponse
    extends JsonRpcResponse<ValueResponse<Iterable<SignatureStatus?>>> {
  SignatureStatusesResponse(ValueResponse<Iterable<SignatureStatus?>> result)
      : super(result: result);

  factory SignatureStatusesResponse.fromJson(Map<String, dynamic> json) =>
      _$SignatureStatusesResponseFromJson(json);
}
