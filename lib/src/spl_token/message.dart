import 'package:solana/src/encoder/encoder.dart';

class TokenMessage extends Message {
  TokenMessage({
    required List<Instruction> instructions,
  }) : super(
          instructions: instructions,
        );

  factory TokenMessage.createMint({
    required String mintAuthority,
    required String mint,
    required int rent,
    required int space,
    required int decimals,
    String? freezeAuthority,
  }) =>
      TokenMessage(
        instructions: [
          Instruction.system(
            accounts: [
              AccountMeta.writeable(pubKey: mintAuthority, isSigner: true),
              AccountMeta.writeable(pubKey: mint, isSigner: true),
            ],
            data: InstructionData.createAccount(
              programId: TokenProgram.id,
              rent: rent,
              space: space,
            ),
          ),
          Instruction(
            programId: TokenProgram.id,
            accounts: [
              AccountMeta.writeable(pubKey: mint, isSigner: false),
              AccountMeta.readonly(pubKey: Sysvar.rent, isSigner: false),
            ],
            data: Buffer.fromConcatenatedByteArrays([
              TokenProgram.initializeMint,
              Buffer.fromUint8(decimals),
              Buffer.fromBase58(mintAuthority),
              Buffer.fromUint8(freezeAuthority != null ? 1 : 0),
              if (freezeAuthority != null)
                Buffer.fromBase58(freezeAuthority)
              else
                List<int>.filled(32, 0),
            ]),
          )
        ],
      );

  factory TokenMessage.createAccount({
    required String pubKey,
    required String owner,
    required String mint,
    required int rent,
    required int space,
  }) =>
      TokenMessage(instructions: [
        Instruction.system(
          accounts: [
            AccountMeta.writeable(pubKey: owner, isSigner: true),
            AccountMeta.writeable(pubKey: pubKey, isSigner: true),
          ],
          data: InstructionData.createAccount(
            programId: TokenProgram.id,
            rent: rent,
            space: space,
          ),
        ),
        Instruction(
          programId: TokenProgram.id,
          accounts: [
            AccountMeta.writeable(pubKey: pubKey, isSigner: true),
            AccountMeta.readonly(pubKey: mint, isSigner: false),
            AccountMeta.readonly(pubKey: owner, isSigner: false),
            AccountMeta.readonly(pubKey: Sysvar.rent, isSigner: false),
          ],
          data: TokenProgram.initializeAccount,
        ),
      ]);

  factory TokenMessage.mintTo({
    required String mint,
    required String destination,
    required String owner,
    required int amount,
    String? feePayer,
  }) =>
      TokenMessage(
        instructions: [
          Instruction(
            programId: TokenProgram.id,
            accounts: [
              AccountMeta.writeable(pubKey: mint, isSigner: false),
              AccountMeta.writeable(pubKey: destination, isSigner: false),
              AccountMeta(
                pubKey: owner,
                isSigner: true,
                isWriteable: feePayer == null,
              ),
            ],
            data: Buffer.fromConcatenatedByteArrays([
              TokenProgram.mintTo,
              Buffer.fromUint64(amount),
            ]),
          ),
        ],
      );
}
