import 'package:flutter/material.dart';
import 'package:wassali_app/core/utils/extensions.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.content,
    this.icon,
    this.actions,
    this.titleColor,
    this.titleWeight,
  });

  final String title;
  final Widget content;
  final Widget? icon;
  final List<Widget>? actions;
  final Color? titleColor;
  final FontWeight? titleWeight;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(
            color: titleColor,
            fontWeight: titleWeight,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.all(16),
      icon: icon,
      content: content,
      actions: actions,
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
