// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_account_data_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SplTokenAccountDataInfo _$SplTokenAccountDataInfoFromJson(
        Map<String, dynamic> json) =>
    SplTokenAccountDataInfo(
      tokenAmount:
          TokenAmount.fromJson(json['tokenAmount'] as Map<String, dynamic>),
      state: json['state'] as String,
      isNative: json['isNative'] as bool,
      mint: json['mint'] as String,
      owner: json['owner'] as String,
      delegate: json['delegate'] as String?,
      delegateAmount: json['delegateAmount'] == null
          ? null
          : TokenAmount.fromJson(
              json['delegateAmount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SplTokenAccountDataInfoToJson(
    SplTokenAccountDataInfo instance) {
  final val = <String, dynamic>{
    'tokenAmount': instance.tokenAmount.toJson(),
    'state': instance.state,
    'isNative': instance.isNative,
    'mint': instance.mint,
    'owner': instance.owner,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('delegate', instance.delegate);
  writeNotNull('delegateAmount', instance.delegateAmount?.toJson());
  return val;
}
