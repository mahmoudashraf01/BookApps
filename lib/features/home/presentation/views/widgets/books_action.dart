import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            bgColor: white,
            txtColor: black,
            buttonText: r'19.99$',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            bgColor: yellow,
            txtColor: black,
            buttonText: 'Free Preview',
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
