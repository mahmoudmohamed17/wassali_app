import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassali_app/core/localization/localization_keys.dart';
import 'package:wassali_app/core/theme/colors.dart';
import 'package:wassali_app/core/utils/app_assets.dart';
import 'package:wassali_app/core/widgets/custom_text_button.dart';
import 'package:wassali_app/features/onboarding/data/page_model.dart';
import 'package:wassali_app/features/onboarding/views/dots_indicator.dart';
import 'package:wassali_app/features/onboarding/views/navigation_buttons.dart';
import 'package:wassali_app/features/onboarding/views/page_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final _pages = [
    PageModel(
      picture: AppAssets.onboarding1,
      title: LocalizationKeys.onboardingTitle1,
      subTitle: LocalizationKeys.onboardingDesc1,
    ),
    PageModel(
      picture: AppAssets.onboarding2,
      title: LocalizationKeys.onboardingTitle2,
      subTitle: LocalizationKeys.onboardingDesc2,
    ),
    PageModel(
      picture: AppAssets.onboarding3,
      title: LocalizationKeys.onboardingTitle3,
      subTitle: LocalizationKeys.onboardingDesc3,
    ),
    PageModel(
      picture: AppAssets.onboarding4,
      title: LocalizationKeys.onboardingTitle4,
      subTitle: LocalizationKeys.onboardingDesc4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            spacing: 24,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CustomTextButton(
                  onPressed: () {},
                  label: LocalizationKeys.skip,
                  labelColor: AppColors.textLight,
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (context, index) =>
                      PageContent(model: _pages[index]),
                ),
              ),
              4.verticalSpace,
              DotsIndicator(dotsCount: _pages.length, currentDot: _pageIndex),
              4.verticalSpace,
              NavigationButtons(
                pageController: _controller,
                currentIndex: _pageIndex,
              ),
              4.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
