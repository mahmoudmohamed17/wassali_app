import 'package:flutter/material.dart';
import 'package:wassali_app/core/theme/typography.dart';
import 'package:wassali_app/core/utils/extensions.dart';
import '../theme/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final int maxLines;
  final bool enabled;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.maxLines = 1,
    this.enabled = true,
    this.onChanged,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
        TextFormField(
          controller: widget.controller,
          obscureText: !_isVisible,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          maxLines: widget.maxLines,
          enabled: widget.enabled,
          onChanged: widget.onChanged,
          style: AppTypography.bodyMedium,
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.prefixIcon,
            suffixIcon: IconButton(
              onPressed: () => setState(() {
                _isVisible = !_isVisible;
              }),
              icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
            ),
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
