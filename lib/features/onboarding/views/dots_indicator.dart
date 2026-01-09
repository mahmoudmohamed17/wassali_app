import 'package:flutter/material.dart';
import 'package:wassali_app/core/theme/colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.dotsCount,
    required this.currentDot,
  });

  final int dotsCount;
  final int currentDot;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        dotsCount,
        (index) => _buildDot(index == currentDot),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.primary
            : AppColors.textHint.withValues(alpha: 0.4),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      height: 8,
      width: isActive ? 64 : 8,
    );
  }
}
