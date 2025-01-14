import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:solana/solana.dart';

import '../../config.dart';

part 'token.g.dart';

@immutable
@JsonSerializable(createToJson: false)
class Token {
  const Token({
    required this.chainId,
    required this.address,
    required this.symbol,
    required this.name,
    required this.decimals,
    required this.logoURI,
    required this.isStablecoin,
  });

  const factory Token.solana() = _SolanaToken;

  const factory Token.unknown() = _UnknownToken;

  const factory Token.wrappedSolana() = _WrappedSolanaToken;

  const factory Token.splToken({
    required int chainId,
    required String address,
    required String symbol,
    required String name,
    required int decimals,
    required String logoURI,
    required bool isStablecoin,
  }) = SplToken;

  factory Token.fromJson(Map<String, dynamic> data) => _$TokenFromJson(data);

  static const usdc = isProd ? _UsdcMainToken() : _UsdcDevToken();

  static const sol = Token.solana();

  static const unk = Token.unknown();

  static const wrappedSol = Token.wrappedSolana();

  bool get isSolana => this is _SolanaToken;

  Ed25519HDPublicKey get publicKey => Ed25519HDPublicKey.fromBase58(address);

  @override
  String toString() => '$address: $chainId/$symbol/$name';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Token && chainId == other.chainId && address == other.address;

  @override
  int get hashCode => Object.hash(chainId, address);

  final int chainId;
  final String address;
  final String symbol;
  final String name;
  final int decimals;
  final String? logoURI;
  final bool isStablecoin;
}

class _SolanaToken extends Token {
  const _SolanaToken()
      : super(
          address: 'So11111111111111111111111111111111111111111',
          logoURI:
              'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/So11111111111111111111111111111111111111112/logo.png',
          chainId: currentChainId,
          decimals: 9,
          name: 'Solana',
          symbol: 'SOL',
          isStablecoin: false,
        );
}

class _UnknownToken extends Token {
  const _UnknownToken()
      : super(
          address: 'Unknown1111111111111111111111111111111111111',
          logoURI:
              'https://upload.wikimedia.org/wikipedia/commons/5/57/ABCQ.png',
          chainId: currentChainId,
          decimals: 9,
          name: 'Unknown Token',
          symbol: 'UNKNOWN',
          isStablecoin: false,
        );
}

class SplToken extends Token {
  const SplToken({
    required super.chainId,
    required super.address,
    required super.symbol,
    required super.name,
    required super.decimals,
    super.logoURI,
    required super.isStablecoin,
  });
}

class _WrappedSolanaToken extends SplToken {
  const _WrappedSolanaToken()
      : super(
          address: 'So11111111111111111111111111111111111111112',
          logoURI:
              'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/So11111111111111111111111111111111111111112/logo.png',
          chainId: currentChainId,
          decimals: 9,
          name: 'Wrapped SOL',
          symbol: 'SOL',
          isStablecoin: false,
        );
}

class _UsdcMainToken extends SplToken {
  const _UsdcMainToken()
      : super(
          address: 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v',
          logoURI:
              'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v/logo.png',
          chainId: currentChainId,
          decimals: 6,
          name: 'USD Coin',
          symbol: 'USDC',
          isStablecoin: true,
        );
}

class _UsdcDevToken extends SplToken {
  const _UsdcDevToken()
      : super(
          address: '4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU',
          logoURI:
              'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU/logo.png',
          chainId: currentChainId,
          decimals: 6,
          name: 'USD Coin',
          symbol: 'USDC',
          isStablecoin: true,
        );
}

extension TokenUtils on Token {
  bool get isUsdcToken => address == Token.usdc.address;
}
