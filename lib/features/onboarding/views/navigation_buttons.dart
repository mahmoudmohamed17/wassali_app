import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wassali_app/core/localization/localization_keys.dart';
import 'package:wassali_app/core/theme/colors.dart';
import 'package:wassali_app/core/widgets/custom_elevated_button.dart';
import 'package:wassali_app/core/widgets/custom_outlined_button.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });
  final PageController pageController;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: currentIndex == 0
              ? const SizedBox()
              : CustomOutlinedButton(
                  onPressed: () {
                    pageController.animateToPage(
                      currentIndex - 1,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.ease,
                    );
                  },
                  text: LocalizationKeys.previous,
                  textColor: AppColors.textLight,
                  borderColor: AppColors.textLight,
                  icon: const Icon(
                    FontAwesomeIcons.angleRight,
                    color: AppColors.textLight,
                  ),
                ),
        ),
        Expanded(
          child: CustomElevatedButton(
            onPressed: () {
              if (currentIndex == 3) {
                /// TODO: Navigate to the Login Screen
              } else {
                pageController.animateToPage(
                  currentIndex + 1,
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.ease,
                );
              }
            },
            text: currentIndex == 3
                ? LocalizationKeys.getStarted
                : LocalizationKeys.next,
            icon: currentIndex == 3
                ? null
                : const Icon(FontAwesomeIcons.angleLeft, color: Colors.white),
            iconAlignment: IconAlignment.end,
          ),
        ),
      ],
    );
  }
}
