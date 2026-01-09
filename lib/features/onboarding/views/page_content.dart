import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassali_app/core/theme/colors.dart';
import 'package:wassali_app/core/utils/constants.dart';
import 'package:wassali_app/core/utils/extensions.dart';
import 'package:wassali_app/features/onboarding/data/page_model.dart';

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.model});
  final PageModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppConstants.radiusXL),
          ),
          child: Image.asset(
            model.picture,
            width: context.screenWidth,
            height: context.screenHeight * 0.40,
            fit: BoxFit.cover,
          ),
        ),
        24.verticalSpace,
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: context.textTheme.displaySmall?.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
        16.verticalSpace,
        Text(
          model.subTitle,
          textAlign: TextAlign.center,
          style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.textLight,
          ),
        ),
      ],
    );
  }
}
