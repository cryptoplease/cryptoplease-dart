import 'dart:typed_data';

import 'package:solana/src/solana_serializable/solana_serializable.dart';
import 'package:solana/src/types/account_meta.dart';

class MessageHeader extends Serializable {
  MessageHeader._(
    this.numRequiredSignatures,
    this.numReadonlySignedAccounts,
    this.numReadonlyUnSignedAccounts,
  );

  factory MessageHeader.fromAccounts(List<AccountMeta> accounts) =>
      MessageHeader._(
        accounts.fold(0, _signersCounterReducer),
        accounts.fold(0, _readonlySignersCounterReducer),
        accounts.fold(0, _readonlyNonSignerCounterReducer),
      );

  static int _signersCounterReducer(int total, AccountMeta meta) =>
      (meta.isSigner ? 1 : 0) + total;

  static int _readonlyNonSignerCounterReducer(int total, AccountMeta meta) =>
      (meta.isReadonlyNonSigner ? 1 : 0) + total;

  static int _readonlySignersCounterReducer(int total, AccountMeta meta) =>
      (meta.isReadonlySigner ? 1 : 0) + total;

  final int numRequiredSignatures;
  final int numReadonlySignedAccounts;
  final int numReadonlyUnSignedAccounts;

  @override
  List<int> serialize() {
    final data = ByteData(3)
      ..setUint8(0, numRequiredSignatures)
      ..setUint8(1, numReadonlySignedAccounts)
      ..setUint8(2, numReadonlyUnSignedAccounts);
    return data.buffer.asUint8List();
  }
}
