/*import 'package:json_annotation/json_annotation.dart';
import 'package:solana/src/dto/account.dart';

part 'associated_account.g.dart';

@JsonSerializable(createToJson: false)
class AssociatedTokenAccount {
  AssociatedTokenAccount({
    required this.address,
    required this.account,
  });

  factory AssociatedTokenAccount.fromJson(Map<String, dynamic> json) =>
      _$AssociatedTokenAccountFromJson(json);

  @JsonKey(name: 'pubkey')
  final String address;
  final Account account;
}

@JsonSerializable(createToJson: false)
class AssociatedTokenAccountResponse
    extends List<AssociatedTokenAccount> {
  AssociatedTokenAccountResponse(
      ValueResponse<List<AssociatedTokenAccount>> result)
      : super(result: result);

  factory AssociatedTokenAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AssociatedTokenAccountResponseFromJson(json);
}
*/
