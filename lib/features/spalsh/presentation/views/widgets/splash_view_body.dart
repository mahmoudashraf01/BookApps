import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(
          height: 5,
        ),
        Center(
            child: Text(
          'Read Free Books',
          style: title1Bold,
        ))
      ],
    );
  }
}
