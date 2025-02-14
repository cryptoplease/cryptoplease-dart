import 'dart:async';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dfunc/dfunc.dart';
import 'package:drift/drift.dart';
import 'package:espressocash_api/espressocash_api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/db/db.dart';
import '../../../data/file_manager.dart';
import '../token.dart';
import 'extensions.dart';

@Singleton()
class TokenRepository {
  const TokenRepository(this._db, this._fileManager, this._tokensMetaStorage);

  final MyDatabase _db;
  final FileManager _fileManager;
  final TokensMetaStorage _tokensMetaStorage;

  @PostConstruct(preResolve: true)
  Future<void> init() => tryEitherAsync((_) async {
        final actualHash = _tokensMetaStorage.getHash();
        if (actualHash != null) return;

        final rootToken = ServicesBinding.rootIsolateToken;

        final assetFile = await rootBundle.load('assets/tokens/tokens.csv.gz');
        final file = await _fileManager.loadFromAppDir('tokens.csv.gz');
        final sink = file.openWrite()..add(assetFile.buffer.asUint8List());
        await sink.flush();
        await sink.close();

        if (rootToken == null) return;

        await compute(
          _initializeFromAssets,
          IsolateParams(rootToken, file.path),
        ).doOnRightAsync((hash) async {
          await _tokensMetaStorage.saveHash(hash);
        });
      });

  Future<void> update(EspressoCashClient ecClient) async {
    final rootToken = ServicesBinding.rootIsolateToken;

    if (rootToken == null) return;

    final file = await _fileManager.loadFromAppDir('tokens.csv.gz');

    await ecClient.getTokensFile(file.path);

    await compute(
      _initializeFromAssets,
      IsolateParams(rootToken, file.path),
    ).doOnRightAsync((hash) async {
      await _tokensMetaStorage.saveHash(hash);
    });
  }

  Future<Token?> getToken(String address) {
    final query = _db.select(_db.tokenRows)
      ..where((token) => token.address.equals(address))
      ..limit(1);

    return query.getSingleOrNull().letAsync((token) => token?.toModel());
  }

  Future<List<TokenRow>> getAll() {
    final query = _db.select(_db.tokenRows);

    return query.get();
  }
}

Future<Either<Exception, String>> _initializeFromAssets(IsolateParams args) =>
    tryEitherAsync(
      (_) async {
        BackgroundIsolateBinaryMessenger.ensureInitialized(args.rootToken);

        final tokenStream = File(args.path).openRead().decodeFile();
        final data = await File(args.path).readAsBytes();

        final db = MyDatabase();

        await db.transaction(() async {
          await tokenStream.forEach((tokenRows) async {
            for (final tokenRow in tokenRows) {
              await db
                  .into(db.tokenRows)
                  .insert(tokenRow, mode: InsertMode.insertOrReplace);
            }
          });
        });

        // ignore: avoid-weak-cryptographic-algorithms, non sensitive
        return md5.convert(data).toString();
      },
    );

class IsolateParams {
  const IsolateParams(this.rootToken, this.path);

  final RootIsolateToken rootToken;
  final String path;
}

@injectable
class TokensMetaStorage {
  const TokensMetaStorage(this._prefs);

  static const String _key = 'tokensFileHash';

  final SharedPreferences _prefs;

  Future<void> saveHash(String hash) async {
    await _prefs.setString(_key, hash);
  }

  String? getHash() => _prefs.getString(_key);
}
