import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../gen/assets.gen.dart';
import '../../../ui/button.dart';
import '../../../ui/colors.dart';
import '../../../ui/loader.dart';
import '../../../ui/snackbar.dart';
import '../../../ui/theme.dart';
import '../services/kyc_service.dart';

class KycCameraScreen extends StatefulWidget {
  const KycCameraScreen({super.key});

  static Future<bool> push(BuildContext context) => Navigator.of(context)
      .push<bool>(
        MaterialPageRoute(
          builder: (context) => const KycCameraScreen(),
        ),
      )
      .then((result) => result ?? false);

  @override
  State<KycCameraScreen> createState() => _KycCameraScreenState();
}

class _KycCameraScreenState extends State<KycCameraScreen> {
  File? _capturedImage;

  bool _isLoading = false;

  late FaceCameraController _controller;

  Future<void> _handleSubmitted() async {
    setState(() => _isLoading = true);

    try {
      final service = sl<KycSharingService>();

      await service.updatePhoto(photoSelfie: _capturedImage);

      if (!mounted) return;

      Navigator.pop(context, true);
    } on Exception {
      showCpErrorSnackbar(context, message: 'Failed to update data');
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = FaceCameraController(
      autoCapture: false,
      defaultCameraLens: CameraLens.front,
      onCapture: (image) {
        setState(() => _capturedImage = image);
      },
    );
  }

  @override
  Widget build(BuildContext context) => CpLoader(
        isLoading: _isLoading,
        child: CpTheme.black(
          child: Scaffold(
            body: Stack(
              children: [
                Builder(
                  builder: (context) {
                    final capturedImage = _capturedImage;

                    return capturedImage != null
                        ? _ResultView(
                            capturedImage: capturedImage,
                            onRetakePressed: () async {
                              await _controller.startImageStream();

                              if (!mounted) return;

                              setState(() => _capturedImage = null);
                            },
                            onSubmitPressed: _handleSubmitted,
                          )
                        : _CameraView(_controller);
                  },
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    padding: EdgeInsets.only(
                      top: MediaQuery.paddingOf(context).top + 16,
                      right: 24,
                    ),
                    icon: const Icon(Icons.close, size: 28),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _CameraView extends StatelessWidget {
  const _CameraView(this._controller);

  final FaceCameraController _controller;

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SmartFaceCamera(
            controller: _controller,
            indicatorShape: IndicatorShape.image,
            indicatorAssetImage: Assets.images.faceFrame.path,
            showControls: false,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: CpColors.yellowColor,
                      width: 3,
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CpButton(
                    text: '',
                    onPressed: _controller.captureImage,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}

class _ResultView extends StatelessWidget {
  const _ResultView({
    required this.capturedImage,
    required this.onRetakePressed,
    required this.onSubmitPressed,
  });

  final File capturedImage;
  final VoidCallback onRetakePressed;
  final VoidCallback onSubmitPressed;

  @override
  Widget build(BuildContext context) => Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Transform.flip(
              flipX: false,
              child: Image.file(
                capturedImage,
                height: double.maxFinite,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CpButton(
                    variant: CpButtonVariant.light,
                    width: double.infinity,
                    text: 'Retake Selfie',
                    onPressed: onRetakePressed,
                  ),
                  const SizedBox(height: 16),
                  CpButton(
                    width: double.infinity,
                    text: 'Submit',
                    onPressed: onSubmitPressed,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}