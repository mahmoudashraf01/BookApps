import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/books_action.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/custom_image.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.15,
            ),
            child: const CustomImage(
              aspectRatio: 3 / 4,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'The Lord Of The Rings',
            style: h4Bold,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'J.Tolken',
            style: title1Bold.copyWith(
                fontStyle: FontStyle.italic, color: white.withOpacity(0.8)),
          ),
          const SizedBox(
            height: 5,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BookAction(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like',
              style: title2.copyWith(
                fontWeight: FontWeight.w800,
                color: white.withOpacity(0.9),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SimilarBookListView(),
        ],
      ),
    );
  }
}
