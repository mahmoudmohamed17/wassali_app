import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassali_app/core/localization/localization_keys.dart';
import 'package:wassali_app/core/routing/routes.dart';
import 'package:wassali_app/core/theme/colors.dart';
import 'package:wassali_app/core/utils/app_assets.dart';
import 'package:wassali_app/core/widgets/custom_loading_indicator.dart';
import 'package:wassali_app/core/utils/extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoadingVisible = false;

  void _showLoadingIndicator() => setState(() {
    _isLoadingVisible = true;
  });

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(const Duration(milliseconds: 4000), () {
      _showLoadingIndicator();
    });
    Future.delayed(const Duration(milliseconds: 7500), () {
      if (mounted) {
        context.go(Routes.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [
              FadeIn(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 1500),
                child: Image.asset(
                  AppAssets.logo,
                  height: context.screenHeight * 0.15,
                ),
              ),
              AnimatedTextKit(
                isRepeatingAnimation: false,
                totalRepeatCount: 0,
                animatedTexts: [
                  TyperAnimatedText(
                    '${LocalizationKeys.appName} - Wassali',
                    textStyle: context.textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  ),
                ],
              ),
              _isLoadingVisible
                  ? FadeIn(
                      child: const CustomLoadingIndicator(color: Colors.white),
                    )
                  : const SizedBox(height: 50, width: 50),
            ],
          ),
        ),
      ),
    );
  }
}
