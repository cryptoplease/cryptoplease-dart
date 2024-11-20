import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di.dart';
import '../../../ui/colors.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../profile/data/profile_repository.dart';
import '../models/ambassador_referral.dart';
import '../widgets/ambassador_page.dart';

class ShareAmbassadorLinkScreen extends StatefulWidget {
  const ShareAmbassadorLinkScreen({super.key});

  static void push(BuildContext context) => Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => const ShareAmbassadorLinkScreen(),
        ),
      );

  static void navigate(BuildContext context) =>
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (context) => const ShareAmbassadorLinkScreen(),
        ),
      );

  @override
  State<ShareAmbassadorLinkScreen> createState() =>
      _ShareAmbassadorLinkScreenState();
}

class _ShareAmbassadorLinkScreenState extends State<ShareAmbassadorLinkScreen> {
  late final Uri _uri;
  late final String _name;

  @override
  void initState() {
    super.initState();

    final wallet = sl<ECWallet>().publicKey;
    final referral = AmbassadorReferral(address: wallet);

    _uri = referral.toLink();
    _name = sl<ProfileRepository>().fullName;
  }

  @override
  Widget build(BuildContext context) => AmbassadorPage(
        name: _name,
        child: Padding(
          padding: EdgeInsets.only(top: 24.h, bottom: 24.h),
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Center(
                child: BarcodeWidget(
                  height: 220.h,
                  barcode: Barcode.qrCode(),
                  data: _uri.toString(),
                  padding: EdgeInsets.zero,
                  color: CpColors.mediumSandColor,
                ),
              ),
            ],
          ),
        ),
      );
}