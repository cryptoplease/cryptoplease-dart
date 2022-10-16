import 'dart:math';

import 'package:cryptoplease/app/ui/bottom_button.dart';
import 'package:cryptoplease/app/ui/button.dart';
import 'package:cryptoplease/app/ui/colors.dart';
import 'package:cryptoplease/app/ui/theme.dart';
import 'package:cryptoplease/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    Key? key,
    this.title,
    required this.nextLabel,
    this.onNextPressed,
    required this.child,
  }) : super(key: key);

  final String? title;
  final Widget child;
  final VoidCallback? onNextPressed;
  final String nextLabel;

  @override
  Widget build(BuildContext context) {
    final title = this.title;

    return CpTheme.dark(
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: CpColors.primaryColor,
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                floating: false,
                pinned: true,
                snap: false,
                expandedHeight: title == null ? null : 250,
                flexibleSpace: title == null
                    ? null
                    : FlexibleSpaceBar(
                        centerTitle: true,
                        title: Builder(
                          builder: (context) {
                            final FlexibleSpaceBarSettings settings =
                                // ignore: avoid-non-null-assertion, cannot be null here
                                context.dependOnInheritedWidgetOfExactType<
                                    FlexibleSpaceBarSettings>()!;

                            final titleWidget = Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            );
                            final alpha = min<double>(
                              1,
                              (settings.currentExtent - 180) / 100,
                            );

                            return settings.currentExtent > 180
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Opacity(
                                        opacity: alpha,
                                        child: Assets.images.logoIcon
                                            .image(height: 70),
                                      ),
                                      const SizedBox(height: 24),
                                      titleWidget,
                                    ],
                                  )
                                : titleWidget;
                          },
                        ),
                      ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: DefaultTextStyle(
                    textAlign: TextAlign.center,
                    // ignore: avoid-non-null-assertion, cannot be null here
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                    child: child,
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CpButton(
                        key: keyBottomButton,
                        onPressed: onNextPressed,
                        minWidth: 250,
                        text: nextLabel,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
