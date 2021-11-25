// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// ClientGenerator
// **************************************************************************

class _RpcClient implements RpcClient {
  _RpcClient(String url) : _client = JsonRpcClient(url);

  final JsonRpcClient _client;

  @override
  Future<Account?> getAccountInfo(String pubKey,
      {Commitment commitment = Commitment.finalized,
      Encoding? encoding,
      DataSlice? dataSlice}) async {
    final config = GetAccountInfoConfig(
            commitment: commitment, encoding: encoding, dataSlice: dataSlice)
        .toJson();
    final response = await _client.request(
      'getAccountInfo',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return Account?.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<int> getBalance(String pubKey, {Commitment? commitment}) async {
    final config = GetBalanceConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getBalance',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return value as int;
  }

  @override
  Future<int> getBlockHeight({Commitment? commitment}) async {
    final config = GetBlockHeightConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getBlockHeight',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<BlockProduction> getBlockProduction(
      {Commitment? commitment = Commitment.finalized,
      Range? range,
      String? identity}) async {
    final config = GetBlockProductionConfig(
            commitment: commitment, range: range, identity: identity)
        .toJson();
    final response = await _client.request(
      'getBlockProduction',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return BlockProduction.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<BlockCommitment?> getBlockCommitment(int block) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getBlockCommitment',
      params: <dynamic>[
        block,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return BlockCommitment?.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<int?> getBlockTime(int block) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getBlockTime',
      params: <dynamic>[
        block,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int?;
  }

  @override
  Future<List<ClusterNode>> getClusterNodes() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getClusterNodes',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(
        value, (dynamic v) => ClusterNode.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<EpochInfo> getEpochInfo({Commitment? commitment}) async {
    final config = GetEpochInfoConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getEpochInfo',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return EpochInfo.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<EpochSchedule> getEpochSchedule() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getEpochSchedule',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return EpochSchedule.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<FeeCalculatorForBlockhash?> getFeeCalculatorForBlockhash(
      String blockhash,
      {Commitment? commitment}) async {
    final config =
        GetFeeCalculatorForBlockhashConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getFeeCalculatorForBlockhash',
      params: <dynamic>[
        blockhash,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return FeeCalculatorForBlockhash?.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<FeeRateGovernor> getFeeRateGovernor() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getFeeRateGovernor',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return FeeRateGovernor.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<Fees> getFees({Commitment? commitment}) async {
    final config = GetFeesConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getFees',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return Fees.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<int> getFirstAvailableBlock() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getFirstAvailableBlock',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<String> getGenesisHash() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getGenesisHash',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as String;
  }

  @override
  Future<String> getHealth() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getHealth',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as String;
  }

  @override
  Future<Identity> getIdentity() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getIdentity',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return Identity.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<InflationGovernor> getInflationGovernor(
      {Commitment? commitment}) async {
    final config = GetInflationGovernorConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getInflationGovernor',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return InflationGovernor.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<InflationRate> getInflationRate() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getInflationRate',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return InflationRate.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<List<InflationReward>> getInflationReward(
      List<String> addresses) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getInflationReward',
      params: <dynamic>[
        addresses,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(value,
        (dynamic v) => InflationReward.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<List<LargeAccount>> getLargestAccounts(
      {Commitment? commitment = Commitment.finalized,
      CirculationStatus? filter}) async {
    final config =
        GetLargestAccountsConfig(commitment: commitment, filter: filter)
            .toJson();
    final response = await _client.request(
      'getLargestAccounts',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return fromJsonArray(
        value, (dynamic v) => LargeAccount.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<Map<String, List<int>>?> getLeaderSchedule(int? slot,
      {Commitment? commitment = Commitment.finalized, String? identity}) async {
    final config =
        GetLeaderScheduleConfig(commitment: commitment, identity: identity)
            .toJson();
    final response = await _client.request(
      'getLeaderSchedule',
      params: <dynamic>[
        if (slot != null) slot,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonMap(value, (dynamic v) => v as String,
        (dynamic v) => fromJsonArray(v, (dynamic v) => v as int));
  }

  @override
  Future<int> getMaxRetransmitSlot() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getMaxRetransmitSlot',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<int> getMaxShredInsertSlot() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getMaxShredInsertSlot',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<int> getMinimumBalanceForRentExemption(int accountDataLength,
      {Commitment? commitment}) async {
    final config =
        GetMinimumBalanceForRentExemptionConfig(commitment: commitment)
            .toJson();
    final response = await _client.request(
      'getMinimumBalanceForRentExemption',
      params: <dynamic>[
        accountDataLength,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<List<Account>> getMultipleAccounts(List<String> pubKeys,
      {Commitment commitment = Commitment.finalized,
      Encoding? encoding,
      DataSlice? dataSlice}) async {
    final config = GetMultipleAccountsConfig(
            commitment: commitment, encoding: encoding, dataSlice: dataSlice)
        .toJson();
    final response = await _client.request(
      'getMultipleAccounts',
      params: <dynamic>[
        pubKeys,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return fromJsonArray(
        value, (dynamic v) => Account.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<List<ProgramAccount>> getProgramAccounts(String pubKey,
      {Commitment? commitment = Commitment.finalized,
      required Encoding encoding,
      DataSlice? dataSlice,
      List<Filter>? filter}) async {
    final config = GetProgramAccountsConfig(
            commitment: commitment,
            encoding: encoding,
            dataSlice: dataSlice,
            filter: filter)
        .toJson();
    final response = await _client.request(
      'getProgramAccounts',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(value,
        (dynamic v) => ProgramAccount.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<RecentBlockhash> getRecentBlockhash({Commitment? commitment}) async {
    final config = GetRecentBlockhashConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getRecentBlockhash',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return RecentBlockhash.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<List<PerfSample>> getRecentPerformanceSamples(int? limit) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getRecentPerformanceSamples',
      params: <dynamic>[
        if (limit != null) limit,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(
        value, (dynamic v) => PerfSample.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<int> getSnapshotSlot() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getSnapshotSlot',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<List<SignatureStatus?>> getSignatureStatuses(List<String> signatures,
      {bool? searchTransactionHistory}) async {
    final config = GetSignatureStatusesConfig(
            searchTransactionHistory: searchTransactionHistory)
        .toJson();
    final response = await _client.request(
      'getSignatureStatuses',
      params: <dynamic>[
        signatures,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return fromJsonArray(value,
        (dynamic v) => SignatureStatus?.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<int> getSlot({Commitment? commitment}) async {
    final config = GetSlotConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getSlot',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<String> getSlotLeader({Commitment? commitment}) async {
    final config = GetSlotLeaderConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getSlotLeader',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as String;
  }

  @override
  Future<List<String>> getSlotLeaders(int startSlot, int limit) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getSlotLeaders',
      params: <dynamic>[
        startSlot,
        limit,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(value, (dynamic v) => v as String);
  }

  @override
  Future<StakeActivation> getStakeActivation(String pubKey,
      {Commitment? commitment = Commitment.finalized, int? epoch}) async {
    final config =
        GetStakeActivationConfig(commitment: commitment, epoch: epoch).toJson();
    final response = await _client.request(
      'getStakeActivation',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return StakeActivation.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<Supply> getSupply(
      {Commitment commitment = Commitment.finalized,
      bool? excludeNonCirculatingAccountsList}) async {
    final config = GetSupplyConfig(
            commitment: commitment,
            excludeNonCirculatingAccountsList:
                excludeNonCirculatingAccountsList)
        .toJson();
    final response = await _client.request(
      'getSupply',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return Supply.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<TokenAmount> getTokenAccountBalance(String pubKey,
      {Commitment? commitment}) async {
    final config =
        GetTokenAccountBalanceConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getTokenAccountBalance',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return TokenAmount.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<List<ProgramAccount>> getTokenAccountsByDelegate(
      String pubKey, TokenAccountsFilter filter,
      {Commitment commitment = Commitment.finalized,
      Encoding? encoding,
      DataSlice? dataSlice}) async {
    final config = GetTokenAccountsByDelegateConfig(
            commitment: commitment, encoding: encoding, dataSlice: dataSlice)
        .toJson();
    final response = await _client.request(
      'getTokenAccountsByDelegate',
      params: <dynamic>[
        pubKey,
        filter.toJson(),
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return fromJsonArray(value,
        (dynamic v) => ProgramAccount.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<List<ProgramAccount>> getTokenAccountsByOwner(
      String pubKey, TokenAccountsFilter filter,
      {Commitment commitment = Commitment.finalized,
      Encoding? encoding,
      DataSlice? dataSlice}) async {
    final config = GetTokenAccountsByOwnerConfig(
            commitment: commitment, encoding: encoding, dataSlice: dataSlice)
        .toJson();
    final response = await _client.request(
      'getTokenAccountsByOwner',
      params: <dynamic>[
        pubKey,
        filter.toJson(),
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return fromJsonArray(value,
        (dynamic v) => ProgramAccount.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<List<ProgramAccount>> getTokenLargestAccounts(String pubKey,
      {Commitment? commitment}) async {
    final config =
        GetTokenLargestAccountsConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getTokenLargestAccounts',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return fromJsonArray(value,
        (dynamic v) => ProgramAccount.fromJson(v as Map<String, dynamic>));
  }

  @override
  Future<TokenAmount> getTokenSupply(String mint,
      {Commitment? commitment}) async {
    final config = GetTokenSupplyConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getTokenSupply',
      params: <dynamic>[
        mint,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return TokenAmount.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<int> getTransactionCount({Commitment? commitment}) async {
    final config = GetTransactionCountConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'getTransactionCount',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<SolanaVersion> getVersion() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getVersion',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return SolanaVersion.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<VoteAccounts> getVoteAccounts(
      {Commitment? commitment = Commitment.finalized,
      String? votePubKey,
      bool? keepUnstakedDelinquents,
      int? delinquentSlotDistance}) async {
    final config = GetVoteAccountsConfig(
            commitment: commitment,
            votePubKey: votePubKey,
            keepUnstakedDelinquents: keepUnstakedDelinquents,
            delinquentSlotDistance: delinquentSlotDistance)
        .toJson();
    final response = await _client.request(
      'getVoteAccounts',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return VoteAccounts.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<int> minimumLedgerSlot() async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'minimumLedgerSlot',
      params: <dynamic>[
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as int;
  }

  @override
  Future<String> requestAirdrop(String pubKey, int lamports,
      {Commitment? commitment}) async {
    final config = RequestAirdropConfig(commitment: commitment).toJson();
    final response = await _client.request(
      'requestAirdrop',
      params: <dynamic>[
        pubKey,
        lamports,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as String;
  }

  @override
  Future<String> sendTransaction(String transaction,
      {Encoding encoding = Encoding.base64,
      Commitment? commitment = Commitment.finalized,
      bool? skipPreflight = false,
      int? maxRetries}) async {
    final config = SendTransactionConfig(
            encoding: encoding,
            commitment: commitment,
            skipPreflight: skipPreflight,
            maxRetries: maxRetries)
        .toJson();
    final response = await _client.request(
      'sendTransaction',
      params: <dynamic>[
        transaction,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return value as String;
  }

  @override
  Future<TransactionStatus> simulateTransaction(String transaction,
      {bool? sigVerify,
      Encoding encoding = Encoding.base64,
      Commitment? commitment = Commitment.finalized,
      bool? replaceRecentBlockhash = false,
      SimulateTransactionAccounts? accounts}) async {
    final config = SimulateTransactionConfig(
            sigVerify: sigVerify,
            encoding: encoding,
            commitment: commitment,
            replaceRecentBlockhash: replaceRecentBlockhash,
            accounts: accounts)
        .toJson();
    final response = await _client.request(
      'simulateTransaction',
      params: <dynamic>[
        transaction,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = unwrapAndGetResult(response);

    return TransactionStatus.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<Block> getConfirmedBlock(int slot,
      {Encoding? encoding,
      TransactionDetailLevel? transactionDetails,
      bool? rewards = false,
      Commitment? commitment = Commitment.finalized}) async {
    final config = GetConfirmedBlockConfig(
            encoding: encoding,
            transactionDetails: transactionDetails,
            rewards: rewards,
            commitment: commitment)
        .toJson();
    final response = await _client.request(
      'getConfirmedBlock',
      params: <dynamic>[
        slot,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return Block.fromJson(value as Map<String, dynamic>);
  }

  @override
  Future<List<int>> getConfirmedBlocks(
      int startSlot, int? endSlot, Commitment? commitment) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getConfirmedBlocks',
      params: <dynamic>[
        startSlot,
        if (endSlot != null) endSlot,
        if (commitment != null) commitment.value,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(value, (dynamic v) => v as int);
  }

  @override
  Future<List<int>> getConfirmedBlocksWithLimit(
      int startSlot, int limit, Commitment? commitment) async {
    final config = <String, dynamic>{};
    final response = await _client.request(
      'getConfirmedBlocksWithLimit',
      params: <dynamic>[
        startSlot,
        limit,
        if (commitment != null) commitment.value,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(value, (dynamic v) => v as int);
  }

  @override
  Future<List<TransactionSignatureInformation>>
      getConfirmedSignaturesForAddress2(String pubKey,
          {int? limit,
          String? before,
          String? until,
          Commitment? commitment = Commitment.finalized}) async {
    final config = GetConfirmedSignaturesForAddress2Config(
            limit: limit, before: before, until: until, commitment: commitment)
        .toJson();
    final response = await _client.request(
      'getConfirmedSignaturesForAddress2',
      params: <dynamic>[
        pubKey,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return fromJsonArray(
        value,
        (dynamic v) => TransactionSignatureInformation.fromJson(
            v as Map<String, dynamic>));
  }

  @override
  Future<TransactionDetails?> getConfirmedTransaction(String signature,
      {Encoding? encoding = Encoding.jsonParsed,
      Commitment? commitment = Commitment.finalized}) async {
    final config = GetConfirmedTransactionConfig(
            encoding: encoding, commitment: commitment)
        .toJson();
    final response = await _client.request(
      'getConfirmedTransaction',
      params: <dynamic>[
        signature,
        if (config.isNotEmpty) config,
      ],
    );
    final dynamic value = getResult(response);

    return TransactionDetails?.fromJson(value as Map<String, dynamic>);
  }
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetAccountInfoConfig {
  GetAccountInfoConfig({
    this.commitment = Commitment.finalized,
    this.encoding,
    this.dataSlice,
  });

  final Commitment commitment;
  final Encoding? encoding;
  final DataSlice? dataSlice;

  Map<String, dynamic> toJson() => _$GetAccountInfoConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetBalanceConfig {
  GetBalanceConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetBalanceConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetBlockHeightConfig {
  GetBlockHeightConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetBlockHeightConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetBlockProductionConfig {
  GetBlockProductionConfig({
    this.commitment = Commitment.finalized,
    this.range,
    this.identity,
  });

  final Commitment? commitment;
  final Range? range;
  final String? identity;

  Map<String, dynamic> toJson() => _$GetBlockProductionConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetEpochInfoConfig {
  GetEpochInfoConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetEpochInfoConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetFeeCalculatorForBlockhashConfig {
  GetFeeCalculatorForBlockhashConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() =>
      _$GetFeeCalculatorForBlockhashConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetFeesConfig {
  GetFeesConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetFeesConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetInflationGovernorConfig {
  GetInflationGovernorConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetInflationGovernorConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetLargestAccountsConfig {
  GetLargestAccountsConfig({
    this.commitment = Commitment.finalized,
    this.filter,
  });

  final Commitment? commitment;
  final CirculationStatus? filter;

  Map<String, dynamic> toJson() => _$GetLargestAccountsConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetLeaderScheduleConfig {
  GetLeaderScheduleConfig({
    this.commitment = Commitment.finalized,
    this.identity,
  });

  final Commitment? commitment;
  final String? identity;

  Map<String, dynamic> toJson() => _$GetLeaderScheduleConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetMinimumBalanceForRentExemptionConfig {
  GetMinimumBalanceForRentExemptionConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() =>
      _$GetMinimumBalanceForRentExemptionConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetMultipleAccountsConfig {
  GetMultipleAccountsConfig({
    this.commitment = Commitment.finalized,
    this.encoding,
    this.dataSlice,
  });

  final Commitment commitment;
  final Encoding? encoding;
  final DataSlice? dataSlice;

  Map<String, dynamic> toJson() => _$GetMultipleAccountsConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetProgramAccountsConfig {
  GetProgramAccountsConfig({
    this.commitment = Commitment.finalized,
    required this.encoding,
    this.dataSlice,
    this.filter,
  });

  final Commitment? commitment;
  final Encoding encoding;
  final DataSlice? dataSlice;
  final List<Filter>? filter;

  Map<String, dynamic> toJson() => _$GetProgramAccountsConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetRecentBlockhashConfig {
  GetRecentBlockhashConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetRecentBlockhashConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetSignatureStatusesConfig {
  GetSignatureStatusesConfig({
    this.searchTransactionHistory,
  });

  final bool? searchTransactionHistory;

  Map<String, dynamic> toJson() => _$GetSignatureStatusesConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetSlotConfig {
  GetSlotConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetSlotConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetSlotLeaderConfig {
  GetSlotLeaderConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetSlotLeaderConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetStakeActivationConfig {
  GetStakeActivationConfig({
    this.commitment = Commitment.finalized,
    this.epoch,
  });

  final Commitment? commitment;
  final int? epoch;

  Map<String, dynamic> toJson() => _$GetStakeActivationConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetSupplyConfig {
  GetSupplyConfig({
    this.commitment = Commitment.finalized,
    this.excludeNonCirculatingAccountsList,
  });

  final Commitment commitment;
  final bool? excludeNonCirculatingAccountsList;

  Map<String, dynamic> toJson() => _$GetSupplyConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetTokenAccountBalanceConfig {
  GetTokenAccountBalanceConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetTokenAccountBalanceConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetTokenAccountsByDelegateConfig {
  GetTokenAccountsByDelegateConfig({
    this.commitment = Commitment.finalized,
    this.encoding,
    this.dataSlice,
  });

  final Commitment commitment;
  final Encoding? encoding;
  final DataSlice? dataSlice;

  Map<String, dynamic> toJson() =>
      _$GetTokenAccountsByDelegateConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetTokenAccountsByOwnerConfig {
  GetTokenAccountsByOwnerConfig({
    this.commitment = Commitment.finalized,
    this.encoding,
    this.dataSlice,
  });

  final Commitment commitment;
  final Encoding? encoding;
  final DataSlice? dataSlice;

  Map<String, dynamic> toJson() => _$GetTokenAccountsByOwnerConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetTokenLargestAccountsConfig {
  GetTokenLargestAccountsConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetTokenLargestAccountsConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetTokenSupplyConfig {
  GetTokenSupplyConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetTokenSupplyConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetTransactionCountConfig {
  GetTransactionCountConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetTransactionCountConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetVoteAccountsConfig {
  GetVoteAccountsConfig({
    this.commitment = Commitment.finalized,
    this.votePubKey,
    this.keepUnstakedDelinquents,
    this.delinquentSlotDistance,
  });

  final Commitment? commitment;
  final String? votePubKey;
  final bool? keepUnstakedDelinquents;
  final int? delinquentSlotDistance;

  Map<String, dynamic> toJson() => _$GetVoteAccountsConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class RequestAirdropConfig {
  RequestAirdropConfig({
    this.commitment,
  });

  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$RequestAirdropConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class SendTransactionConfig {
  SendTransactionConfig({
    this.encoding = Encoding.base64,
    this.commitment = Commitment.finalized,
    this.skipPreflight = false,
    this.maxRetries,
  });

  final Encoding encoding;
  final Commitment? commitment;
  final bool? skipPreflight;
  final int? maxRetries;

  Map<String, dynamic> toJson() => _$SendTransactionConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class SimulateTransactionConfig {
  SimulateTransactionConfig({
    this.sigVerify,
    this.encoding = Encoding.base64,
    this.commitment = Commitment.finalized,
    this.replaceRecentBlockhash = false,
    this.accounts,
  });

  final bool? sigVerify;
  final Encoding encoding;
  final Commitment? commitment;
  final bool? replaceRecentBlockhash;
  final SimulateTransactionAccounts? accounts;

  Map<String, dynamic> toJson() => _$SimulateTransactionConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetConfirmedBlockConfig {
  GetConfirmedBlockConfig({
    this.encoding,
    this.transactionDetails,
    this.rewards = false,
    this.commitment = Commitment.finalized,
  });

  final Encoding? encoding;
  final TransactionDetailLevel? transactionDetails;
  final bool? rewards;
  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetConfirmedBlockConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetConfirmedSignaturesForAddress2Config {
  GetConfirmedSignaturesForAddress2Config({
    this.limit,
    this.before,
    this.until,
    this.commitment = Commitment.finalized,
  });

  final int? limit;
  final String? before;
  final String? until;
  final Commitment? commitment;

  Map<String, dynamic> toJson() =>
      _$GetConfirmedSignaturesForAddress2ConfigToJson(this);
}

@JsonSerializable(createFactory: false, includeIfNull: false)
class GetConfirmedTransactionConfig {
  GetConfirmedTransactionConfig({
    this.encoding = Encoding.jsonParsed,
    this.commitment = Commitment.finalized,
  });

  final Encoding? encoding;
  final Commitment? commitment;

  Map<String, dynamic> toJson() => _$GetConfirmedTransactionConfigToJson(this);
}
