import 'package:flutter/material.dart';
import 'package:mec2/core/const/const.dart';

class ScaleText extends StatelessWidget {
  final Animation<double> scaleAnimation;

  const ScaleText({Key? key, required this.scaleAnimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: const Text(
        'Coffee MEC',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 42,
          color: mainColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
