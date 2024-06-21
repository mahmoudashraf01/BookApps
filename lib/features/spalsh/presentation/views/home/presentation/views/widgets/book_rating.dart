import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: yellow,
          size: 15,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '4.8',
          style: bodyBold,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2245)',
          style: bodyBold,
        ),
      ],
    );
  }
}
