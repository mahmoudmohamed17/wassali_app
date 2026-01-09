import 'package:flutter/material.dart';
import 'package:new_loading_indicator/new_loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;
  final Indicator indicatorType;

  const CustomLoadingIndicator({
    super.key,
    this.size = 50.0,
    this.color,
    this.indicatorType = Indicator.ballSpinFadeLoader,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: LoadingIndicator(
          indicatorType: indicatorType,
          colors: [color ?? Theme.of(context).primaryColor],
        ),
      ),
    );
  }
}
