import 'package:json_annotation/json_annotation.dart';

import 'package:solana/src/rpc/helpers.dart';

part 'context.g.dart';

class ContextResult<T> {
  const ContextResult({
    required this.context,
    required this.value,
  });

  final Context context;
  final T value;
}

@JsonSerializable()
class Context {
  Context({
    required this.slot,
  });

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);

  @JsonKey(fromJson: bigIntFromJson)
  BigInt slot;

  Map<String, dynamic> toJson() => _$ContextToJson(this);
}
