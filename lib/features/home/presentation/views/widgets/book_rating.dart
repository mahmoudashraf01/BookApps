import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });

  final num rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
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
          rating.toString(),
          style: title2Bold.copyWith(color: white.withOpacity(0.9)),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          count.toString(),
          style: bodyBold,
        ),
      ],
    );
  }
}
