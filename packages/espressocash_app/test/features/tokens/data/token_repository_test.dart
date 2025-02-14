import 'package:dfunc/src/either/either.dart';
import 'package:espressocash_api/espressocash_api.dart';
import 'package:espressocash_app/data/db/db.dart';
import 'package:espressocash_app/features/tokens/data/extensions.dart';
import 'package:espressocash_app/features/tokens/data/token_repository.dart';
import 'package:espressocash_app/features/tokens/token.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import 'token_repository_test.mocks.dart';

@GenerateMocks([TokenRepository])
void main() {
  final MemoryTokenRepository memoryRepo = MemoryTokenRepository();
  final MockTokenRepository mockRepo = MockTokenRepository();

  setUpAll(() {
    provideDummy<Either<Exception, String>>(const Right('dummy'));
  });
  group('mocked test', () {
    test('should get a token', () async {
      const token = TokenRow(
        address: 'So00000000000',
        chainId: 101,
        symbol: 'SOL',
        name: 'Solana',
        decimals: 18,
        logoURI: 'https://example.com',
        isStablecoin: false,
      );

      when(mockRepo.getToken('So00000000000'))
          .thenAnswer((_) async => token.toModel());

      final Token? response = await mockRepo.getToken('So00000000000');

      verify(
        mockRepo.getToken('So00000000000'),
      ).called(1);

      expect(response, token.toModel());
    });

    test('should parse and load token rows from CSV chunk', () {
      const chunk =
          'address,chainId,symbol,name,decimals,logoURI,tags,extensions\n'
          'So00000000000,101,SOL,Solana,18,https://example.com,,\n';

      const expectedToken = TokenRow(
        address: 'So00000000000',
        chainId: 101,
        symbol: 'SOL',
        name: 'Solana',
        decimals: 18,
        logoURI: 'https://example.com',
        isStablecoin: false,
      );

      final result = parseChunk(chunk);

      expect(result.length, 1);
      expect(result[0], expectedToken);
    });
  });
  group('memory test', () {
    test('should initialize database from CSV file', () async {
      const token = TokenRow(
        address: 'So00000000000',
        chainId: 101,
        symbol: 'SOL',
        name: 'Solana',
        decimals: 18,
        logoURI: 'https://example.com',
        isStablecoin: false,
      );

      await memoryRepo.init();

      final Token? response = await memoryRepo.getToken('So00000000000');

      expect(response, token.toModel());
    });

    test('should get a token', () async {
      const token = TokenRow(
        address: 'So00000000000',
        chainId: 101,
        symbol: 'SOL',
        name: 'Solana',
        decimals: 18,
        logoURI: 'https://example.com',
        isStablecoin: false,
      );

      await memoryRepo.getToken('So00000000000');

      final Token? response = await memoryRepo.getToken('So00000000000');

      expect(response, token.toModel());
    });

    test('should insert a token', () async {
      const token = TokenRow(
        address: 'So00000000002',
        chainId: 101,
        symbol: 'SOL',
        name: 'Solana',
        decimals: 18,
        logoURI: 'https://example.com',
        isStablecoin: false,
      );

      memoryRepo.insertToken(token);

      final int response = memoryRepo.insertToken(token);

      expect(response, 1);

      final Token? responseToken = await memoryRepo.getToken('So00000000002');

      expect(responseToken, token.toModel());
    });

    test('should insert multiple tokens', () async {
      final tokens = [
        const TokenRow(
          address: 'So00000000003',
          chainId: 101,
          symbol: 'SOL',
          name: 'Solana',
          decimals: 18,
          logoURI: 'https://example.com',
          isStablecoin: false,
        ),
        const TokenRow(
          address: 'So00000000004',
          chainId: 101,
          symbol: 'SOL',
          name: 'Solana',
          decimals: 18,
          logoURI: 'https://example.com',
          isStablecoin: false,
        ),
      ];
      memoryRepo.insertTokens(tokens);

      final Token? responseToken1 = await memoryRepo.getToken('So00000000003');

      expect(responseToken1, tokens[0].toModel());

      final Token? responseToken2 = await memoryRepo.getToken('So00000000004');

      expect(responseToken2, tokens[1].toModel());
    });

    test('should parse and load token rows from CSV chunk', () {
      const chunk =
          'address,chainId,symbol,name,decimals,logoURI,tags,extensions\n'
          'So00000000000,101,SOL,Solana,18,https://example.com,,\n';

      const expectedToken = TokenRow(
        address: 'So00000000000',
        chainId: 101,
        symbol: 'SOL',
        name: 'Solana',
        decimals: 18,
        logoURI: 'https://example.com',
        isStablecoin: false,
      );

      final result = parseChunk(chunk);

      expect(result.length, 1);
      expect(result[0], expectedToken);
    });
  });
}

List<TokenRow> parseChunk(String chunk) {
  final List<TokenRow> tokenIterable = [];
  final List<String> lines = chunk.split('\n');
  for (int i = 1; i < lines.length; i++) {
    final line = lines[i];
    if (line.trim().isEmpty) continue;
    final values = line.split(',');
    if (values.length < 8) continue;

    tokenIterable.add(
      TokenRow(
        address: values[0],
        chainId: int.parse(values[1]),
        symbol: values[2],
        name: values[3],
        decimals: int.parse(values[4]),
        logoURI: values[5],
        isStablecoin: false,
      ),
    );
  }

  return tokenIterable;
}

typedef TokenMap = IMap<String, TokenRow>;

class MemoryTokenRepository implements TokenRepository {
  final data = BehaviorSubject<TokenMap>.seeded(TokenMap());

  @override
  Future<Token?> getToken(String address) async =>
      data.value[address]?.toModel();

  @override
  Future<Either<Exception, String>> init() {
    const chunk =
        'address,chainId,symbol,name,decimals,logoURI,tags,extensions\n'
        'So00000000000,101,SOL,Solana,18,https://example.com,,\n';
    final lines = chunk.split('\n');
    final List<TokenRow> rows =
        lines.skip(1).where((line) => line.trim().isNotEmpty).map((line) {
      final values = line.split(',');
      if (values.length >= 8) {
        return TokenRow(
          address: values[0],
          chainId: int.parse(values[1]),
          symbol: values[2],
          name: values[3],
          decimals: int.parse(values[4]),
          logoURI: values[5],
          isStablecoin: false,
        );
      }
      throw Exception('Invalid line format');
    }).toList();

    final tokenMap =
        Map.fromEntries(rows.map((row) => MapEntry(row.address, row)));
    data.add(data.value.addAll(tokenMap.lock));

    return Future.value(const Right(''));
  }

  void insertTokens(List<TokenRow> tokens) {
    final tokenMap =
        Map.fromEntries(tokens.map((token) => MapEntry(token.address, token)));
    data.add(data.value.addAll(tokenMap.lock));
  }

  int insertToken(TokenRow token) {
    data.add(data.value.add(token.address, token));

    return 1;
  }

  @override
  Future<void> update(EspressoCashClient ecClient) {
    throw UnimplementedError();
  }

  @override
  Future<List<TokenRow>> getAll() {
    throw UnimplementedError();
  }
}
