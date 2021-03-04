import 'package:meta/meta.dart';
import 'package:solana_dart/src/solana_serializable/compact_array.dart';
import 'package:solana_dart/src/solana_serializable/serializable.dart';
import 'package:solana_dart/src/solana_serializable/signature.dart';

import 'message.dart';

class Transaction extends Serializable {
  Transaction({
    @required this.signatures,
    @required this.message,
  });

  final CompactArray<Signature> signatures;
  final Message message;

  @override
  List<int> serialize() {
    return [
      ...signatures.serialize(),
      ...message.serialize(),
    ];
  }
}
