// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetAccountInfoConfigToJson(
        GetAccountInfoConfig instance) =>
    <String, dynamic>{
      'commitment': _$CommitmentEnumMap[instance.commitment]!,
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (instance.dataSlice?.toJson() case final value?) 'dataSlice': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

const _$CommitmentEnumMap = {
  Commitment.processed: 'processed',
  Commitment.confirmed: 'confirmed',
  Commitment.finalized: 'finalized',
};

const _$EncodingEnumMap = {
  Encoding.base64: 'base64',
  Encoding.jsonParsed: 'jsonParsed',
  Encoding.base58: 'base58',
  Encoding.json: 'json',
};

Map<String, dynamic> _$GetBalanceConfigToJson(GetBalanceConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetBlockConfigToJson(GetBlockConfig instance) =>
    <String, dynamic>{
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (_$TransactionDetailLevelEnumMap[instance.transactionDetails]
          case final value?)
        'transactionDetails': value,
      if (instance.rewards case final value?) 'rewards': value,
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.maxSupportedTransactionVersion case final value?)
        'maxSupportedTransactionVersion': value,
    };

const _$TransactionDetailLevelEnumMap = {
  TransactionDetailLevel.none: 'none',
  TransactionDetailLevel.full: 'full',
  TransactionDetailLevel.signatures: 'signatures',
};

Map<String, dynamic> _$GetBlockHeightConfigToJson(
        GetBlockHeightConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetBlockProductionConfigToJson(
        GetBlockProductionConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.range?.toJson() case final value?) 'range': value,
      if (instance.identity case final value?) 'identity': value,
    };

Map<String, dynamic> _$GetBlocksConfigToJson(GetBlocksConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetBlocksWithLimitConfigToJson(
        GetBlocksWithLimitConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetEpochInfoConfigToJson(GetEpochInfoConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetFeeForMessageConfigToJson(
        GetFeeForMessageConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetInflationGovernorConfigToJson(
        GetInflationGovernorConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetInflationRewardConfigToJson(
        GetInflationRewardConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.epoch case final value?) 'epoch': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetLargestAccountsConfigToJson(
        GetLargestAccountsConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (_$CirculationStatusEnumMap[instance.filter] case final value?)
        'filter': value,
    };

const _$CirculationStatusEnumMap = {
  CirculationStatus.circulating: 'circulating',
  CirculationStatus.nonCirculating: 'nonCirculating',
};

Map<String, dynamic> _$GetLatestBlockhashConfigToJson(
        GetLatestBlockhashConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetLeaderScheduleConfigToJson(
        GetLeaderScheduleConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.identity case final value?) 'identity': value,
    };

Map<String, dynamic> _$GetMinimumBalanceForRentExemptionConfigToJson(
        GetMinimumBalanceForRentExemptionConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetMultipleAccountsConfigToJson(
        GetMultipleAccountsConfig instance) =>
    <String, dynamic>{
      'commitment': _$CommitmentEnumMap[instance.commitment]!,
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (instance.dataSlice?.toJson() case final value?) 'dataSlice': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetProgramAccountsConfigToJson(
        GetProgramAccountsConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      'encoding': _$EncodingEnumMap[instance.encoding]!,
      if (instance.dataSlice?.toJson() case final value?) 'dataSlice': value,
      if (instance.filters?.map((e) => e.toJson()).toList() case final value?)
        'filters': value,
      if (instance.withContext case final value?) 'withContext': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetSignaturesForAddressConfigToJson(
        GetSignaturesForAddressConfig instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.before case final value?) 'before': value,
      if (instance.until case final value?) 'until': value,
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetSignatureStatusesConfigToJson(
        GetSignatureStatusesConfig instance) =>
    <String, dynamic>{
      if (instance.searchTransactionHistory case final value?)
        'searchTransactionHistory': value,
    };

Map<String, dynamic> _$GetSlotConfigToJson(GetSlotConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetSlotLeaderConfigToJson(
        GetSlotLeaderConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetStakeMinimumDelegationConfigToJson(
        GetStakeMinimumDelegationConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetSupplyConfigToJson(GetSupplyConfig instance) =>
    <String, dynamic>{
      'commitment': _$CommitmentEnumMap[instance.commitment]!,
      if (instance.excludeNonCirculatingAccountsList case final value?)
        'excludeNonCirculatingAccountsList': value,
    };

Map<String, dynamic> _$GetTokenAccountBalanceConfigToJson(
        GetTokenAccountBalanceConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetTokenAccountsByDelegateConfigToJson(
        GetTokenAccountsByDelegateConfig instance) =>
    <String, dynamic>{
      'commitment': _$CommitmentEnumMap[instance.commitment]!,
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (instance.dataSlice?.toJson() case final value?) 'dataSlice': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetTokenAccountsByOwnerConfigToJson(
        GetTokenAccountsByOwnerConfig instance) =>
    <String, dynamic>{
      'commitment': _$CommitmentEnumMap[instance.commitment]!,
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (instance.dataSlice?.toJson() case final value?) 'dataSlice': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetTokenLargestAccountsConfigToJson(
        GetTokenLargestAccountsConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetTokenSupplyConfigToJson(
        GetTokenSupplyConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$GetTransactionConfigToJson(
        GetTransactionConfig instance) =>
    <String, dynamic>{
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.maxSupportedTransactionVersion case final value?)
        'maxSupportedTransactionVersion': value,
    };

Map<String, dynamic> _$GetTransactionCountConfigToJson(
        GetTransactionCountConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$GetVoteAccountsConfigToJson(
        GetVoteAccountsConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.votePubKey case final value?) 'votePubKey': value,
      if (instance.keepUnstakedDelinquents case final value?)
        'keepUnstakedDelinquents': value,
      if (instance.delinquentSlotDistance case final value?)
        'delinquentSlotDistance': value,
    };

Map<String, dynamic> _$IsBlockhashValidConfigToJson(
        IsBlockhashValidConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$RequestAirdropConfigToJson(
        RequestAirdropConfig instance) =>
    <String, dynamic>{
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
    };

Map<String, dynamic> _$SendTransactionConfigToJson(
        SendTransactionConfig instance) =>
    <String, dynamic>{
      'encoding': _$EncodingEnumMap[instance.encoding]!,
      if (_$CommitmentEnumMap[instance.preflightCommitment] case final value?)
        'preflightCommitment': value,
      if (instance.skipPreflight case final value?) 'skipPreflight': value,
      if (instance.maxRetries case final value?) 'maxRetries': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };

Map<String, dynamic> _$SimulateTransactionConfigToJson(
        SimulateTransactionConfig instance) =>
    <String, dynamic>{
      if (instance.sigVerify case final value?) 'sigVerify': value,
      'encoding': _$EncodingEnumMap[instance.encoding]!,
      if (_$CommitmentEnumMap[instance.commitment] case final value?)
        'commitment': value,
      if (instance.replaceRecentBlockhash case final value?)
        'replaceRecentBlockhash': value,
      if (instance.accounts?.toJson() case final value?) 'accounts': value,
      if (instance.minContextSlot case final value?) 'minContextSlot': value,
    };
