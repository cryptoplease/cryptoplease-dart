// ignore_for_file: avoid-non-null-assertion

import 'package:dfunc/dfunc.dart';
import 'package:drift/drift.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:solana/encoder.dart';

import '../../../data/db/db.dart';
import '../../../data/db/mixins.dart';
import '../../../di.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/data/token_repository.dart';
import '../../tokens/token.dart';
import '../../transactions/models/tx_results.dart';
import '../models/swap.dart';
import '../models/swap_seed.dart';

@injectable
class SwapRepository {
  const SwapRepository(this._db);

  final MyDatabase _db;

  Future<Swap?> load(String id) {
    final query = _db.select(_db.tokenSwapRows)..where((p) => p.id.equals(id));

    return query.getSingleOrNull().then((row) => row?.toModel());
  }

  Future<List<Swap>> getAllPending() {
    final query = _db.select(_db.tokenSwapRows)
      ..where((p) => p.status.equalsValue(SwapStatusDto.success).not());

    return query
        .get()
        .then((rows) => Future.wait(rows.map((row) => row.toModel())));
  }

  Stream<List<Swap>> watchAllPending() {
    final query = _db.select(_db.tokenSwapRows)
      ..where((p) => p.status.equalsValue(SwapStatusDto.success).not());

    return query
        .watch()
        .asyncMap((rows) => Future.wait(rows.map((row) => row.toModel())));
  }

  Stream<Swap?> watch(String id) {
    final query = _db.select(_db.tokenSwapRows)..where((p) => p.id.equals(id));

    return query.watchSingleOrNull().asyncMap((row) => row?.toModel());
  }

  Future<void> delete(String id) async {
    await (_db.delete(_db.tokenSwapRows)..where((p) => p.id.equals(id))).go();
  }

  Future<void> save(Swap payment) =>
      _db.into(_db.tokenSwapRows).insertOnConflictUpdate(payment.toDto());

  Future<void> clear() => _db.delete(_db.tokenSwapRows).go();

  Stream<IList<Swap>> watchTxCreated() => _watchWithStatuses([
        SwapStatusDto.txCreated,
      ]);

  Stream<IList<Swap>> watchTxSent() => _watchWithStatuses([
        SwapStatusDto.txSent,
      ]);

  Stream<IList<Swap>> _watchWithStatuses(
    Iterable<SwapStatusDto> statuses,
  ) {
    final query = _db.select(_db.tokenSwapRows)
      ..where((p) => p.status.isInValues(statuses));

    return query
        .watch()
        .asyncMap((rows) => Future.wait(rows.map((row) => row.toModel())))
        .map((swaps) => swaps.toIList());
  }
}

class TokenSwapRows extends Table with EntityMixin, TxStatusMixin {
  const TokenSwapRows();

  IntColumn get status => intEnum<SwapStatusDto>()();
  IntColumn get inputAmount => integer()();
  IntColumn get outputAmount => integer()();
  IntColumn get fee => integer()();
  TextColumn get inputMint => text()();
  TextColumn get outputMint => text()();
  IntColumn get slippage => intEnum<SlippageDto>()();
}

enum SwapStatusDto {
  txCreated,
  txSent,
  success,
  txFailure,
}

enum SlippageDto {
  zpOne,
  zpFive,
  onePercent,
}

extension SwapRowExt on TokenSwapRow {
  Future<Swap> toModel() async => Swap(
        id: id,
        status: status.toModel(this),
        created: created,
        data: SwapData(
          input: CryptoAmount(
            value: inputAmount,
            cryptoCurrency: CryptoCurrency(
              token: (await sl<TokenRepository>().getToken(inputMint)) ??
                  Token.unk,
            ),
          ),
          output: CryptoAmount(
            value: outputAmount,
            cryptoCurrency: CryptoCurrency(
              token: (await sl<TokenRepository>().getToken(outputMint)) ??
                  Token.unk,
            ),
          ),
          slippage: slippage.toModel(),
          fee: CryptoAmount(
            value: fee,
            cryptoCurrency: Currency.usdc,
          ),
        ),
      );
}

extension on SwapStatusDto {
  SwapStatus toModel(TokenSwapRow row) {
    final tx = row.tx?.let(SignedTx.decode);
    final slot = row.slot?.let(BigInt.tryParse);

    switch (this) {
      case SwapStatusDto.txCreated:
        return SwapStatus.txCreated(tx!, slot: slot ?? BigInt.zero);
      case SwapStatusDto.txSent:
        return SwapStatus.txSent(tx!, slot: slot ?? BigInt.zero);
      case SwapStatusDto.success:
        return SwapStatus.success(tx!);
      case SwapStatusDto.txFailure:
        return SwapStatus.txFailure(
          reason: row.txFailureReason ?? TxFailureReason.unknown,
        );
    }
  }
}

extension on SlippageDto {
  Slippage toModel() {
    switch (this) {
      case SlippageDto.zpOne:
        return Slippage.zpOne;
      case SlippageDto.zpFive:
        return Slippage.zpFive;
      case SlippageDto.onePercent:
        return Slippage.onePercent;
    }
  }
}

extension on Swap {
  TokenSwapRow toDto() {
    final input = data.input;
    final output = data.output;

    return TokenSwapRow(
      id: id,
      created: created,
      status: status.toDto(),
      tx: status.toTx(),
      txId: status.toTxId(),
      inputAmount: input.value,
      inputMint: input.cryptoCurrency.token.address,
      outputAmount: output.value,
      outputMint: output.cryptoCurrency.token.address,
      slippage: data.slippage.toDto(),
      fee: data.fee.value,
      slot: status.toSlot()?.toString(),
      txFailureReason: status.toTxFailureReason(),
    );
  }
}

extension on SwapStatus {
  SwapStatusDto toDto() => this.map(
        txCreated: always(SwapStatusDto.txCreated),
        txSent: always(SwapStatusDto.txSent),
        success: always(SwapStatusDto.success),
        txFailure: always(SwapStatusDto.txFailure),
      );

  String? toTx() => mapOrNull(
        txCreated: (it) => it.tx.encode(),
        txSent: (it) => it.tx.encode(),
        success: (it) => it.tx.encode(),
      );

  String? toTxId() => mapOrNull(
        txSent: (it) => it.tx.id,
        success: (it) => it.tx.id,
        txCreated: (it) => it.tx.id,
      );

  TxFailureReason? toTxFailureReason() => mapOrNull<TxFailureReason?>(
        txFailure: (it) => it.reason,
      );

  BigInt? toSlot() => mapOrNull(
        txCreated: (it) => it.slot,
        txSent: (it) => it.slot,
      );
}

extension on Slippage {
  SlippageDto toDto() {
    switch (this) {
      case Slippage.zpOne:
        return SlippageDto.zpOne;
      case Slippage.zpFive:
        return SlippageDto.zpFive;
      case Slippage.onePercent:
        return SlippageDto.onePercent;
    }
  }
}
