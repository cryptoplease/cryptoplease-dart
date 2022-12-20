import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../di.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../ui/button.dart';
import '../../../../ui/dialogs.dart';
import '../../../../ui/theme.dart';
import '../bl/qr_scanner_bloc.dart';
import '../qr_scanner_flow.dart';
import 'components/qr_scanner_background.dart';

class QrScannerScreen extends StatelessWidget {
  const QrScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => sl<QrScannerBloc>(),
        child: const _Content(),
      );
}

class _Content extends StatefulWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  bool _flashStatus = false;
  bool _cameraEnabled = false;

  @override
  void initState() {
    super.initState();
    context.read<QrScannerBloc>().add(const QrScannerEvent.initialized());
    _qrViewController = MobileScannerController(
      autoResume: true,
      onPermissionSet: _onPermissionSet,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _qrViewController.dispose();
  }

  void _onQRScanError() {
    showWarningDialog(
      context,
      title: context.l10n.qrCodeScanErrorTitle,
      message: context.l10n.qrCodeScanErrorContent,
    );
  }

  void _onQRToggleFlash() {
    context.read<QrScannerFlow>().onCameraPermissionFailure();

    _qrViewController.toggleTorch().then((_) {
      setState(() {
        _flashStatus = !_flashStatus;
      });
    });
  }

  void _onBlocChange(BuildContext context, QrScannerState state) {
    state.map(
      initial: (_) {},
      done: (d) {
        _qrViewController.stop();
        context.read<QrScannerFlow>().onScanComplete(d.request);
      },
      error: (_) {
        _qrViewController.stop();
        _onQRScanError();

        context.read<QrScannerFlow>().onClose();
      },
    );
  }

  void _onCloseButtonPressed() {
    _qrViewController.stop();
    context.read<QrScannerFlow>().onClose();
  }

  void _onPermissionSet(bool allowed) {
    if (_cameraEnabled != allowed) setState(() => _cameraEnabled = allowed);
  }

  void _onDetected(Barcode barcode, MobileScannerArguments? _) {
    final code = barcode.rawValue;
    if (code != null) {
      context.read<QrScannerBloc>().add(QrScannerEvent.received(code));
    }
  }

  void _onManualInputRequested() =>
      context.read<QrScannerFlow>().onManualInputRequested();

  @override
  Widget build(BuildContext _) => BlocListener<QrScannerBloc, QrScannerState>(
        listener: _onBlocChange,
        child: AnnotatedRegion(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarBrightness: Brightness.dark,
          ),
          child: CpTheme.dark(
            child: Scaffold(
              body: Stack(
                children: [
                  QrScannerBackground(
                    enabled: _cameraEnabled,
                    child: MobileScanner(
                      key: _qrKey,
                      controller: _qrViewController,
                      onDetect: _onDetected,
                    ),
                  ),
                  if (_cameraEnabled)
                    Align(
                      alignment: const Alignment(0, -0.7),
                      child: GestureDetector(
                        onTap: _onQRToggleFlash,
                        child: _flashStatus
                            ? Assets.images.flashOn.svg()
                            : Assets.images.flashOff.svg(),
                      ),
                    ),
                  if (!_cameraEnabled)
                    const Align(
                      alignment: Alignment(0, -0.3),
                      child: _PermissionText(),
                    ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0),
                      child: CpButton(
                        text: context.l10n.qrInputAddressTitle,
                        size: CpButtonSize.big,
                        minWidth: 250,
                        onPressed: _onManualInputRequested,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top + 16,
                        right: 24,
                      ),
                      icon: const Icon(Icons.close, size: 28),
                      onPressed: _onCloseButtonPressed,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  late final MobileScannerController _qrViewController;
}

class _PermissionText extends StatelessWidget {
  const _PermissionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24),
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.qrCameraPermissionTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 12),
              Text(
                context.l10n.qrCameraPermissionMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(height: 1.3),
              ),
            ],
          ),
        ),
      );
}
