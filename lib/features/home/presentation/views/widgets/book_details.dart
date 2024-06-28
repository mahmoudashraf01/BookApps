import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.book,
  });

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.15,
          ),
          child: CustomImage(
            aspectRatio: 3 / 4,
            imgUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo.title ?? '',
          style: h4Bold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          book.volumeInfo.authors?[0] ?? '',
          style: title1Bold.copyWith(
              fontStyle: FontStyle.italic, color: white.withOpacity(0.8)),
        ),
        const SizedBox(
          height: 5,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
