part of 'exceptions.dart';

@JsonSerializable(createToJson: false)
class JsonRpcError implements Exception {
  const JsonRpcError(this.message, this.code, this.data);

  factory JsonRpcError.fromJson(Map<String, dynamic> json) =>
      _$JsonRpcErrorFromJson(json);

  final String message;
  final int code;

  // FIXME: data can be structured
  final dynamic data;

  @override
  String toString() {
    if (data != null) {
      return 'jsonrpc-2.0 error ($code): $message\n\t$data';
    } else {
      return 'jsonrpc-2.0 error ($code): $message';
    }
  }
}
