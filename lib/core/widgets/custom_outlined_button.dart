import 'package:flutter/material.dart';
import 'package:wassali_app/core/theme/colors.dart';
import 'package:wassali_app/core/utils/extensions.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final Color? textColor;
  final double borderRadius;
  final double borderWidth;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.icon,
    this.iconAlignment,
    this.textColor,
    this.borderRadius = 16,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: context.theme.outlinedButtonTheme.style?.copyWith(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        side: WidgetStatePropertyAll(
          BorderSide(
            color: borderColor ?? AppColors.primary,
            width: borderWidth,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      icon: icon,
      label: Text(
        text,
        style: context.textTheme.bodyMedium?.copyWith(color: textColor),
      ),
    );
  }
}
