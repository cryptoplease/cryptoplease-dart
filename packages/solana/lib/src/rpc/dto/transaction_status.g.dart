// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionStatus _$TransactionStatusFromJson(Map<String, dynamic> json) =>
    TransactionStatus(
      err: json['err'],
      logs: (json['logs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      accounts: (json['accounts'] as List<dynamic>?)
          ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList(),
      unitsConsumed: (json['unitsConsumed'] as num?)?.toInt(),
      returnData: json['returnData'] == null
          ? null
          : ReturnData.fromJson(json['returnData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionStatusToJson(TransactionStatus instance) =>
    <String, dynamic>{
      'err': instance.err,
      'logs': instance.logs,
      'accounts': instance.accounts?.map((e) => e.toJson()).toList(),
      'unitsConsumed': instance.unitsConsumed,
      'returnData': instance.returnData?.toJson(),
    };

TransactionStatusResult _$TransactionStatusResultFromJson(
        Map<String, dynamic> json) =>
    TransactionStatusResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: TransactionStatus.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionStatusResultToJson(
        TransactionStatusResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value.toJson(),
    };
