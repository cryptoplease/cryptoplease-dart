import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../ui/button.dart';
import '../../../ui/loader.dart';
import '../../../ui/snackbar.dart';
import '../../../utils/email.dart';
import '../../profile/data/profile_repository.dart';
import '../services/kyc_service.dart';
import '../widgets/kyc_page.dart';
import '../widgets/kyc_text_field.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static Future<bool> push(BuildContext context) => Navigator.of(context)
      .push<bool>(
        MaterialPageRoute(
          builder: (context) => const EmailVerificationScreen(),
        ),
      )
      .then((result) => result ?? false);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final email = sl<ProfileRepository>().email;
    _emailController.text = email;
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _sendEmail() async {
    final success = await runWithLoader<bool>(
      context,
      () async {
        try {
          final service = sl<KycSharingService>();

          await service.initEmailVerification(_emailController.text);

          return true;
        } on Exception {
          if (!mounted) return false;

          showCpErrorSnackbar(
            context,
            message: 'Failed to send verification code',
          );

          return false;
        }
      },
    );
    if (!mounted) return;
    if (success) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) => KycPage(
        title: 'Email verification',
        children: [
          const SizedBox(height: 20),
          const Text(
            'Enter your email address to receive your confirmation code.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              height: 21 / 16,
              letterSpacing: .19,
            ),
          ),
          const SizedBox(height: 40),
          KycTextField(
            controller: _emailController,
            inputType: TextInputType.emailAddress,
            placeholder: 'Email Address',
          ),
          const SizedBox(height: 16),
          ListenableBuilder(
            listenable: _emailController,
            builder: (context, child) => CpButton(
              text: 'Send Verification Code',
              onPressed: _emailController.text.isValidEmail ? _sendEmail : null,
            ),
          ),
        ],
      );
}