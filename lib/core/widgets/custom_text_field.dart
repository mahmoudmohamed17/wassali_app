import 'package:flutter/material.dart';
import 'package:wassali_app/core/theme/typography.dart';
import 'package:wassali_app/core/utils/extensions.dart';
import '../theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int maxLines;
  final bool enabled;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.enabled = true,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          maxLines: maxLines,
          enabled: enabled,
          onChanged: onChanged,
          style: AppTypography.bodyMedium,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: context.theme.inputDecorationTheme.border,
            enabledBorder: context.theme.inputDecorationTheme.enabledBorder,
            disabledBorder: context.theme.inputDecorationTheme.disabledBorder,
            focusedBorder: context.theme.inputDecorationTheme.focusedBorder,
            contentPadding: context.theme.inputDecorationTheme.contentPadding,
            hintStyle: context.theme.inputDecorationTheme.hintStyle,
            fillColor: context.theme.inputDecorationTheme.fillColor,
            filled: context.theme.inputDecorationTheme.filled,
          ),
        ),
      ],
    );
  }
}
