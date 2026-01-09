import 'package:flutter/material.dart';
import 'package:wassali_app/core/utils/extensions.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.iconAlignment,
    this.borderRadius = 16,
    this.labelColor,
  });

  final VoidCallback onPressed;
  final String label;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final double borderRadius;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: context.theme.textButtonTheme.style?.copyWith(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
        ),
        foregroundColor: WidgetStatePropertyAll(labelColor),
      ),
      onPressed: onPressed,
      label: Text(label),
      icon: icon,
      iconAlignment: iconAlignment,
    );
  }
}
