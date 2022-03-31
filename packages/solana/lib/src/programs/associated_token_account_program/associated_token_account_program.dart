import 'package:solana/src/crypto/ed25519_hd_keypair.dart';

abstract class AssociatedTokenAccountProgram {
  static const programId = 'ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL';

  static final Ed25519HDPublicKey id = Ed25519HDPublicKey.fromBase58(programId);
}
