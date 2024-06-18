import 'dart:async';

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../../../data/db/db.dart';
import '../token.dart';

@singleton
class TokenListRepository {
  const TokenListRepository(this._db);

  final MyDatabase _db;

  Token getToken(String address) {
    final query = _db.select(_db.tokenRows)
      ..where((token) => token.address.equals(address));

    Token? token;
    final completer = Completer<void>();

    query.getSingle().then((row) {
      token = _db.tokenRows.toModel(row);
      completer.complete();
    });

    completer.future.then((_) {}).catchError((_) {});

    if (completer.isCompleted) {
      if (token != null) {
        // ignore: avoid-non-null-assertion, cannot be null here
        return token!;
      } else {
        throw Exception('Error fetching token');
      }
    } else {
      throw Exception('Error fetching token');
    }
  }

  Future<dynamic> insertToken(Insertable<TokenRow> token) =>
      _db.transaction(() async {
        await _db.into(_db.tokenRows).insert(token);
      });

  Future<dynamic> insertTokens(Iterable<TokenRow> tokens) =>
      _db.transaction(() async {
        await clearAllTokens();
        await _db.batch(
          (batch) => batch.insertAll(
            _db.tokenRows,
            tokens.map(
              (e) => TokenRow(
                chainId: e.chainId,
                address: e.address,
                symbol: e.symbol,
                name: e.name,
                decimals: e.decimals,
                logoURI: e.logoURI,
                tags: e.tags,
                extensions: e.extensions,
              ),
            ),
            mode: InsertMode.insertOrReplace,
          ),
        );
      });

  Future<dynamic> updateToken(Insertable<TokenRow> token) =>
      _db.update(_db.tokenRows).replace(token);

  Future<dynamic> deleteToken(Insertable<TokenRow> token) =>
      _db.delete(_db.tokenRows).delete(token);

  Future<dynamic> clearAllTokens() => _db.delete(_db.tokenRows).go();
}

extension TokenRowsExt on TokenRows {
  Token toModel(TokenRow token) => Token(
        address: token.address,
        name: token.name,
        symbol: token.symbol,
        decimals: token.decimals,
        logoURI: token.logoURI,
        chainId: token.chainId,
        tags: token.tags,
        extensions: token.extensions,
      );
}
