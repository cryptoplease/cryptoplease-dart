// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_rpc_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonRpcException _$JsonRpcExceptionFromJson(Map<String, dynamic> json) =>
    JsonRpcException(
      json['message'] as String,
      (json['code'] as num).toInt(),
      json['data'],
    );

Map<String, dynamic> _$JsonRpcExceptionToJson(JsonRpcException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_TransactionErrorData _$TransactionErrorDataFromJson(
        Map<String, dynamic> json) =>
    _TransactionErrorData(
      $enumDecode(_$TransactionErrorEnumMap, json['err'],
          unknownValue: TransactionError.other),
    );

Map<String, dynamic> _$TransactionErrorDataToJson(
        _TransactionErrorData instance) =>
    <String, dynamic>{
      'err': _$TransactionErrorEnumMap[instance.err]!,
    };

const _$TransactionErrorEnumMap = {
  TransactionError.accountInUse: 'AccountInUse',
  TransactionError.accountLoadedTwice: 'AccountLoadedTwice',
  TransactionError.accountNotFound: 'AccountNotFound',
  TransactionError.programAccountNotFound: 'ProgramAccountNotFound',
  TransactionError.insufficientFundsForFee: 'InsufficientFundsForFee',
  TransactionError.invalidAccountForFee: 'InvalidAccountForFee',
  TransactionError.alreadyProcessed: 'AlreadyProcessed',
  TransactionError.blockhashNotFound: 'BlockhashNotFound',
  TransactionError.instructionError: 'InstructionError',
  TransactionError.callChainTooDeep: 'CallChainTooDeep',
  TransactionError.missingSignatureForFee: 'MissingSignatureForFee',
  TransactionError.invalidAccountIndex: 'InvalidAccountIndex',
  TransactionError.signatureFailure: 'SignatureFailure',
  TransactionError.invalidProgramForExecution: 'InvalidProgramForExecution',
  TransactionError.sanitizeFailure: 'SanitizeFailure',
  TransactionError.clusterMaintenance: 'ClusterMaintenance',
  TransactionError.accountBorrowOutstanding: 'AccountBorrowOutstanding',
  TransactionError.other: 'Other',
};
