import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Read Free Books',
            style: title1Bold,
          ),
        );
      },
    );
  }
}