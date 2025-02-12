import 'dart:async';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:solana/encoder.dart';
import 'package:solana/solana.dart';
import 'package:solana/src/rpc/dto/dto.dart';
import 'package:solana/src/rpc/helpers.dart';
import 'package:solana/src/rpc/json_rpc_client.dart';
import 'package:solana/src/rpc/rpc_client_annotation.dart';

part 'client.g.dart';
part 'client.rpc.dart';
part 'extension.dart';

@SolanaRpcClient()
abstract class RpcClient {
  factory RpcClient(
    String url, {
    Duration timeout = const Duration(seconds: 30),
    Map<String, String> customHeaders = const {},
    HttpClient? httpClient,
  }) =>
      _RpcClient(
        url,
        JsonRpcClient(
          url,
          timeout: timeout,
          customHeaders: customHeaders,
          httpClient: httpClient,
        ),
      );

  abstract final JsonRpcClient _jsonRpcClient;

  /// Returns all information associated with the account of provided Pubkey
  ///
  /// [pubKey] Pubkey of account to query, as base-58 encoded string
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [encoding]
  ///
  /// [dataSlice] Limit the returned account data using the provided offset: <usize> and length: <usize> fields; only available for "base58""base64" or "base64+zstd" encodings.
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at.
  Future<AccountResult> getAccountInfo(
    String pubKey, {
    Commitment commitment = Commitment.finalized,
    Encoding? encoding,
    DataSlice? dataSlice,
    num? minContextSlot,
  });

  /// Returns the balance of the account of provided Pubkey
  ///
  /// [pubKey] Pubkey of account to query, as base-58 encoded string
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at.
  Future<BalanceResult> getBalance(
    String pubKey, {
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns identity and transaction information about a confirmed block in the
  /// ledger
  ///
  /// [slot] slot, as u64 integer
  ///
  /// [encoding]
  ///
  /// [transactionDetails] Level of transaction detail to return.
  ///
  /// [rewards] Whether to populate the rewards array. If parameter not provided, the default
  /// includes rewards.
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [maxSupportedTransactionVersion] Set the max transaction version to return in responses.
  /// If the requested block contains a transaction with a higher version, an error will be returned.
  /// If this parameter is omitted, only legacy transactions will be returned, and a block containing any versioned transaction will prompt the error.
  Future<Block?> getBlock(
    int slot, {
    Encoding? encoding,
    TransactionDetailLevel? transactionDetails,
    bool? rewards = false,
    Commitment? commitment = Commitment.finalized,
    num? maxSupportedTransactionVersion = 0,
  });

  /// Returns the current block height of the node
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at.
  Future<int> getBlockHeight({
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns recent block production information from the current or previous epoch.
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [range] Slot range to return block production for. If parameter not provided, defaults
  /// to current epoch.
  ///
  /// [identity] Only return results for this validator identity (base-58 encoded)
  Future<BlockProductionResult> getBlockProduction({
    Commitment? commitment = Commitment.finalized,
    Range? range,
    String? identity,
  });

  /// Returns commitment for particular block
  ///
  /// [block] block, identified by Slot
  Future<BlockCommitment?> getBlockCommitment(
    int block,
  );

  /// Returns a list of confirmed blocks between two slots
  ///
  /// [startSlot] start_slot, as u64 integer
  ///
  /// [endSlot] end_slot, as u64 integer
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<List<int>> getBlocks(
    int startSlot,
    int? endSlot, {
    Commitment? commitment,
  });

  /// Returns a list of confirmed blocks starting at the given slot
  ///
  /// [startSlot] start_slot, as u64 integer
  ///
  /// [limit] limit, as u64 integer
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<List<int>> getBlocksWithLimit(
    int startSlot,
    int limit, {
    Commitment? commitment,
  });

  /// Returns the estimated production time of a block.
  ///
  /// [block] block, identified by Slot
  Future<int?> getBlockTime(
    int block,
  );

  /// Returns information about all the nodes participating in the cluster
  Future<List<ClusterNode>> getClusterNodes();

  /// Returns information about the current epoch
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at.
  Future<EpochInfo> getEpochInfo({
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns epoch schedule information from this cluster's genesis config
  Future<EpochSchedule> getEpochSchedule();

  /// Get the fee the network will charge for a particular Message
  ///
  /// [message] Base-64 encoded Message
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at.
  @WithContextResult()
  Future<int?> getFeeForMessage(
    String message, {
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns the slot of the lowest confirmed block that has not been purged from
  /// the ledger
  Future<int> getFirstAvailableBlock();

  /// Returns the genesis hash
  Future<String> getGenesisHash();

  /// Returns the current health of the node.
  ///
  /// If one or more --known-validator arguments are provided to solana-validator,
  /// "ok" is returned when the node has within HEALTH_CHECK_SLOT_DISTANCE slots of
  /// the highest known validator, otherwise an error is returned. "ok" is always
  /// returned if no known validators are provided.
  Future<String> getHealth();

  /// Returns the highest slot information that the node has snapshots for.
  ///
  /// This will find the highest full snapshot slot, and the highest incremental
  /// snapshot slot based on the full snapshot slot, if there is one.
  Future<HighestSnapshotSlot> getHighestSnapshotSlot();

  /// Returns the identity pubkey for the current node
  Future<Identity> getIdentity();

  /// Returns the current inflation governor
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<InflationGovernor> getInflationGovernor({
    Commitment? commitment,
  });

  /// Returns the specific inflation values for the current epoch
  Future<InflationRate> getInflationRate();

  /// Returns the inflation / staking reward for a list of addresses for an epoch
  ///
  /// [addresses] An array of addresses to query, as base-58 encoded strings
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [epoch] An epoch for which the reward occurs. If omitted, the previous epoch will be used
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<List<InflationReward>> getInflationReward(
    List<String> addresses, {
    Commitment? commitment,
    int? epoch,
    num? minContextSlot,
  });

  /// Returns the 20 largest accounts, by lamport balance (results may be cached up
  /// to two hours)
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [filter] filter results by account type; currently supported: circulating|nonCirculating
  Future<LargeAccountsResult> getLargestAccounts({
    Commitment? commitment = Commitment.finalized,
    CirculationStatus? filter,
  });

  /// Returns the latest blockhash
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<LatestBlockhashResult> getLatestBlockhash({
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns the leader schedule for an epoch
  ///
  /// [slot] Fetch the leader schedule for the epoch that corresponds to the provided slot.
  /// If unspecified, the leader schedule for the current epoch is fetched
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [identity] Only return results for this validator identity (base-58 encoded)
  Future<Map<String, List<int>>?> getLeaderSchedule(
    int? slot, {
    Commitment? commitment = Commitment.finalized,
    String? identity,
  });

  /// Get the max slot seen from retransmit stage.
  Future<int> getMaxRetransmitSlot();

  /// Get the max slot seen from after shred insert.
  Future<int> getMaxShredInsertSlot();

  /// Returns minimum balance required to make account rent exempt.
  ///
  /// [accountDataLength] account data length
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<int> getMinimumBalanceForRentExemption(
    int accountDataLength, {
    Commitment? commitment,
  });

  /// Returns the account information for a list of Public keys
  ///
  /// [pubKeys] An array of PubKeys to query, as base-58 encoded strings
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [encoding]
  ///
  /// [dataSlice] Limit the returned account data using the provided offset: <usize> and length: <usize> fields; only available for "base58""base64" or "base64+zstd" encodings.
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<MultipleAccountsResult> getMultipleAccounts(
    List<String> pubKeys, {
    Commitment commitment = Commitment.finalized,
    Encoding? encoding,
    DataSlice? dataSlice,
    num? minContextSlot,
  });

  /// Returns all accounts owned by the provided program [pubKey].
  ///
  /// [pubKey] Pubkey of program, as base-58 encoded string
  ///
  /// For [commitment] parameter description [see this document][1].
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [1]:
  /// https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [dataSlice] Limit the returned account data using the provided offset:
  /// <usize> and length: <usize> fields; only available for "base58""base64" or
  /// "base64+zstd" encodings.
  ///
  /// Filter results using various [filters]; account must meet all filter
  /// criteria to be included in results
  Future<List<ProgramAccount>> getProgramAccounts(
    String pubKey, {
    Commitment? commitment = Commitment.finalized,
    required Encoding encoding,
    DataSlice? dataSlice,
    List<ProgramDataFilter>? filters,
    bool? withContext,
    num? minContextSlot,
  });

  /// Returns a list of recent performance samples, in reverse slot order.
  /// Performance samples are taken every 60 seconds and include the number of
  /// transactions and slots that occur in a given time window.
  ///
  /// [limit] number of samples to return (maximum 720)
  Future<List<PerfSample>> getRecentPerformanceSamples(
    int? limit,
  );

  /// Returns confirmed signatures for transactions involving an address backwards in
  /// time from the provided signature or most recent confirmed block
  ///
  /// [pubKey] account address as base-58 encoded string
  ///
  /// [limit] Maximum transaction signatures to return (between 1 and 1,000, default: 1,000).
  ///
  /// [before] Start searching backwards from this transaction signature. If not provided the
  /// search starts from the top of the highest max confirmed block.
  ///
  /// [until] Search until this transaction signature, if found before limit reached.
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<List<TransactionSignatureInformation>> getSignaturesForAddress(
    String pubKey, {
    int? limit,
    String? before,
    String? until,
    Commitment? commitment = Commitment.finalized,
    num? minContextSlot,
  });

  /// Returns the statuses of a list of signatures. Unless the
  /// searchTransactionHistory configuration parameter is included, this method only
  /// searches the recent status cache of signatures, which retains statuses for all
  /// active slots plus MAX_RECENT_BLOCKHASHES rooted slots.
  ///
  /// [signatures] An array of transaction signatures to confirm, as base-58 encoded strings
  ///
  /// [searchTransactionHistory] If true, a Solana node will search its ledger cache for any signatures not
  /// found in the recent status cache
  Future<SignatureStatusesResult> getSignatureStatuses(
    List<String> signatures, {
    bool? searchTransactionHistory,
  });

  /// Returns the slot that has reached the given or default commitment level
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<int> getSlot({
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns the current slot leader
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<String> getSlotLeader({
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns the slot leaders for a given slot range
  ///
  /// [startSlot] Start slot, as u64 integer
  ///
  /// [limit] Limit, as u64 integer
  Future<List<String>> getSlotLeaders(
    int startSlot,
    int limit,
  );

  /// Returns the stake minimum delegation, in lamports.
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<StakeMinimumDelegationResult> getStakeMinimumDelegation({
    Commitment? commitment,
  });

  /// Returns information about the current supply.
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [excludeNonCirculatingAccountsList] exclude non circulating accounts list from response
  Future<SupplyResult> getSupply({
    Commitment commitment = Commitment.finalized,
    bool? excludeNonCirculatingAccountsList,
  });

  /// Returns the token balance of an SPL Token account.
  ///
  /// [pubKey] Pubkey of Token account to query, as base-58 encoded string
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<TokenAmountResult> getTokenAccountBalance(
    String pubKey, {
    Commitment? commitment,
  });

  /// Returns all SPL Token accounts by approved Delegate.
  ///
  /// [pubKey] Pubkey of account delegate to query, as base-58 encoded string
  ///
  /// [filter] Either a mint or a programId
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [encoding]
  ///
  /// [dataSlice] Limit the returned account data using the provided offset: <usize> and length: <usize> fields; only available for "base58""base64" or "base64+zstd" encodings.
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<ProgramAccountsResult> getTokenAccountsByDelegate(
    String pubKey,
    TokenAccountsFilter filter, {
    Commitment commitment = Commitment.finalized,
    Encoding? encoding,
    DataSlice? dataSlice,
    num? minContextSlot,
  });

  /// Returns all SPL Token accounts by token owner.
  ///
  /// [pubKey] Pubkey of account owner to query, as base-58 encoded string
  ///
  /// [filter] Either a mint or a programId
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [encoding]
  ///
  /// [dataSlice] Limit the returned account data using the provided offset: <usize> and length: <usize> fields; only available for "base58""base64" or "base64+zstd" encodings.
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<ProgramAccountsResult> getTokenAccountsByOwner(
    String pubKey,
    TokenAccountsFilter filter, {
    Commitment commitment = Commitment.finalized,
    Encoding? encoding,
    DataSlice? dataSlice,
    num? minContextSlot,
  });

  /// Returns the 20 largest accounts of a particular SPL Token type.
  ///
  /// [pubKey] Pubkey of token Mint to query, as base-58 encoded string
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<TokenLargestAccountsResult> getTokenLargestAccounts(
    String pubKey, {
    Commitment? commitment,
  });

  /// Returns the total supply of an SPL Token type.
  ///
  /// [mint] Pubkey of token Mint to query, as base-58 encoded string
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<TokenAmountResult> getTokenSupply(
    String mint, {
    Commitment? commitment,
  });

  /// Returns transaction details for a confirmed transaction
  ///
  /// [signature] transaction signature as base-58 encoded string
  ///
  /// [encoding]
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [maxSupportedTransactionVersion] Set the max transaction version to return in responses. If the requested
  /// transaction is a higher version, an error will be returned. If this parameter is omitted, only legacy transactions
  /// will be returned, and any versioned transaction will prompt the error.
  Future<TransactionDetails?> getTransaction(
    String signature, {
    Encoding? encoding,
    Commitment? commitment = Commitment.finalized,
    num? maxSupportedTransactionVersion = 0,
  });

  /// Returns the current Transaction count from the ledger
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<int> getTransactionCount({
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns the current solana versions running on the node
  Future<SolanaVersion> getVersion();

  /// Returns the account info and associated stake for all the voting accounts in
  /// the current bank.
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [votePubKey] Only return results for this validator vote address (base-58 encoded)
  ///
  /// [keepUnstakedDelinquents] Do not filter out delinquent validators with no stake
  ///
  /// [delinquentSlotDistance] Specify the number of slots behind the tip that a validator must fall to be
  /// considered delinquent. NOTE: For the sake of consistency between ecosystem
  /// products, it is not recommended that this argument be specified.
  Future<VoteAccounts> getVoteAccounts({
    Commitment? commitment = Commitment.finalized,
    String? votePubKey,
    bool? keepUnstakedDelinquents,
    int? delinquentSlotDistance,
  });

  /// Returns whether a blockhash is still valid or not
  ///
  /// [blockhash] The blockhash of this block, as base-58 encoded string
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<BlockhasValidResult> isBlockhashValid(
    String blockhash, {
    Commitment? commitment,
    num? minContextSlot,
  });

  /// Returns the lowest slot that the node has information about in its ledger. This
  /// value may increase over time if the node is configured to purge older ledger
  /// data
  Future<int> minimumLedgerSlot();

  /// Requests an airdrop of lamports to a Pubkey
  ///
  /// [pubKey] Pubkey of account to receive lamports, as base-58 encoded string
  ///
  /// [lamports] lamports, as a u64
  ///
  /// [commitment] For [commitment] parameter description [see this document][see this document]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  Future<TransactionId> requestAirdrop(
    String pubKey,
    int lamports, {
    Commitment? commitment,
  });

  /// Submits a signed transaction to the cluster for processing.
  ///
  /// This method does not alter the transaction in any way; it relays the
  /// transaction created by clients to the node as-is.
  ///
  /// If the node's rpc service receives the transaction, this method immediately
  /// succeeds, without waiting for any confirmations. A successful response from
  /// this method does not guarantee the transaction is processed or confirmed by
  /// the cluster.
  ///
  /// While the rpc service will reasonably retry to submit it, the transaction could
  /// be rejected if transaction's recent_blockhash expires before it lands.
  ///
  /// Use [RPCClient.getSignatureStatuses()] to ensure a transaction is processed and
  /// confirmed.
  ///
  /// Before submitting, the following preflight checks are performed:
  ///
  /// - The transaction signatures are verified
  /// - The transaction is simulated against the bank slot specified by the preflight
  /// commitment. On failure an error will be returned. Preflight checks may be
  /// disabled if desired. It is recommended to specify the same commitment and
  /// preflight commitment to avoid confusing behavior.
  /// - The returned signature is the first signature in the transaction, which is
  /// used to identify the transaction (transaction id). This identifier can be
  /// easily extracted from the transaction data before submission.
  ///
  /// [transaction] fully-signed Transaction, as encoded string
  ///
  /// [encoding] Only [Encoding.base64] is acceptable
  ///
  /// [preflightCommitment] For [preflightCommitment] parameter description [see this document][see this document]
  ///
  /// [see this document]: https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [skipPreflight] If true, skip the preflight transaction checks (default: false).
  ///
  /// [maxRetries] Maximum number of times for the RPC node to retry sending the transaction to
  /// the leader.
  /// If this parameter not provided, the RPC node will retry the transaction until
  /// it is finalized or until the blockhash expires.
  ///
  /// [minContextSlot] Set the minimum slot at which to perform preflight transaction checks
  Future<TransactionId> sendTransaction(
    String transaction, {
    Encoding encoding = Encoding.base64,
    Commitment? preflightCommitment = Commitment.finalized,
    bool? skipPreflight = false,
    int? maxRetries,
    num? minContextSlot,
  });

  /// Simulate sending a transaction
  ///
  /// [transaction] Transaction, as an encoded string. The transaction must have
  /// a valid blockhash, but is not required to be signed.
  ///
  /// [sigVerify] If true the transaction signatures will be verified (default:
  /// false, conflicts with `SimulateTransactionOptions.replaceRecentBlockhash`)
  ///
  /// [encoding] Only [Encoding.base64] is acceptable
  ///
  /// [commitment] For [commitment] parameter description [see this document][1]
  /// [Commitment.processed] is not supported as [commitment].
  ///
  /// [see this document]:
  /// https://docs.solana.com/developing/clients/jsonrpc-api#configuring-state-commitment
  ///
  /// [replaceRecentBlockhash] If true the transaction recent blockhash will be
  /// replaced with the most recent blockhash. (default: false, conflicts with
  /// sigVerify)
  ///
  /// [accounts] Accounts configuration object containing the following fields:
  ///
  /// [minContextSlot] Set the minimum slot that the request can be evaluated at
  Future<TransactionStatusResult> simulateTransaction(
    String transaction, {
    bool? sigVerify,
    Encoding encoding = Encoding.base64,
    Commitment? commitment = Commitment.finalized,
    bool? replaceRecentBlockhash = false,
    SimulateTransactionAccounts? accounts,
    num? minContextSlot,
  });
}
