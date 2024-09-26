import 'package:flutter/material.dart';
import 'package:mec2/core/const/const.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> slidingAnimation;

  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: const Text(
        'Coffee Shop',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 42,
          color: mainColor, // or your main color
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
