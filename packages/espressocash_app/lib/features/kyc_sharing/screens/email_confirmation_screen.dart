import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/bottom_button.dart';
import '../../../ui/snackbar.dart';
import '../services/kyc_service.dart';
import '../utils/kyc_utils.dart';
import '../widgets/kyc_page.dart';
import '../widgets/kyc_text_field.dart';

class EmailConfirmationScreen extends StatefulWidget {
  const EmailConfirmationScreen({super.key});

  static Future<bool> push(BuildContext context) => Navigator.of(context)
      .push<bool>(
        MaterialPageRoute(
          builder: (context) => const EmailConfirmationScreen(),
        ),
      )
      .then((result) => result ?? false);

  @override
  State<EmailConfirmationScreen> createState() =>
      _EmailConfirmationScreenState();
}

class _EmailConfirmationScreenState extends State<EmailConfirmationScreen> {
  final _controller = TextEditingController();

  bool get _isValid => _controller.text.length == 6;

  Future<void> _handleConfirm() async {
    final service = sl<KycSharingService>();

    try {
      await service.verifyEmail(code: _controller.text);

      if (!mounted) return;

      Navigator.pop(context, true);
    } on Exception {
      showCpErrorSnackbar(
        context,
        message: 'Wrong verification code',
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => KycPage(
        title: context.l10n.emailVerification,
        children: [
          const SizedBox(height: 20),
          Text(
            context.l10n
                .checkEmailText(sl<KycSharingService>().value?.getEmail ?? ''),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              height: 21 / 16,
              letterSpacing: .19,
            ),
          ),
          const SizedBox(height: 40),
          KycTextField(
            controller: _controller,
            inputType: TextInputType.number,
            placeholder: context.l10n.enterVerificationCode,
          ),
          const Spacer(),
          ListenableBuilder(
            listenable: _controller,
            builder: (context, child) => CpBottomButton(
              horizontalPadding: 16,
              text: context.l10n.next,
              onPressed: _isValid ? _handleConfirm : null,
            ),
          ),
        ],
      );
}
