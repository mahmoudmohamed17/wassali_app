import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wassali_app/core/utils/extensions.dart';
import 'custom_loading_indicator.dart';

class CustomOverlayLoadingIndicator extends StatelessWidget {
  const CustomOverlayLoadingIndicator({
    super.key,
    required this.child,
    required this.isLoading,
    required this.title,
  });

  final Widget child;
  final bool isLoading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Center(
                child: Container(
                  color: Colors.black45,
                  child: Column(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomLoadingIndicator(color: Colors.white),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
