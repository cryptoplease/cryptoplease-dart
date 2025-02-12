import 'package:json_annotation/json_annotation.dart';
import 'package:solana/src/rpc/dto/account_data/account_data.dart';
import 'package:solana/src/rpc/dto/context.dart';
import 'package:solana/src/rpc/helpers.dart';

part 'account.g.dart';

/// An account
@JsonSerializable()
class Account {
  const Account({
    required this.lamports,
    required this.owner,
    required this.data,
    required this.executable,
    required this.rentEpoch,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  /// Number of lamports assigned to this account, as a u64
  final int lamports;

  /// base-58 encoded Pubkey of the program this account has been
  /// assigned to
  final String owner;

  /// Data associated with the account, either as encoded binary
  /// data or JSON format {<program>: <state>}, depending on
  /// encoding parameter
  final AccountData? data;

  /// Boolean indicating if the account contains a program (and
  /// is strictly read-only)
  final bool executable;

  /// The epoch at which this account will next owe rent, as u64
  @JsonKey(fromJson: bigIntFromJson)
  final BigInt rentEpoch;

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable()
class AccountResult extends ContextResult<Account?> {
  const AccountResult({required super.context, required super.value});

  factory AccountResult.fromJson(Map<String, dynamic> json) =>
      _$AccountResultFromJson(json);

  Map<String, dynamic> toJson() => _$AccountResultToJson(this);
}

@JsonSerializable()
class MultipleAccountsResult extends ContextResult<List<Account?>> {
  const MultipleAccountsResult({required super.context, required super.value});

  factory MultipleAccountsResult.fromJson(Map<String, dynamic> json) =>
      _$MultipleAccountsResultFromJson(json);

  Map<String, dynamic> toJson() => _$MultipleAccountsResultToJson(this);
}
