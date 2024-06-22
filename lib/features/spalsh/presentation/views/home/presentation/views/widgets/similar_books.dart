import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: title2.copyWith(
            fontWeight: FontWeight.w800,
            color: white.withOpacity(0.9),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBookListView(),
      ],
    );
  }
}
