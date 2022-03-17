part of 'qr_scanner_bloc.dart';

enum QrScannerError {
  invalidQrCode,
  tokenNotFound,
  solanaPayQueryFailedToParse,
  unsupportedURIScheme,
}

@freezed
class QrScannerState with _$QrScannerState {
  const factory QrScannerState.initial() = QrScannerInitialState;

  const factory QrScannerState.error(QrScannerError error) =
      QrScannerErrorState;

  const factory QrScannerState.done(
    QrScannerRequest request,
  ) = QrScannerDoneState;
}
