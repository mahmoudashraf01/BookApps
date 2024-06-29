import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/functions/launch_url.dart';
import 'package:books_app/core/widgets/custom_button.dart';
import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () async {
              String txt = getDownload(book);
              if (txt == 'Download') {
                launchCustomUrl(
                  context: context,
                  url: book.accessInfo!.pdf!.acsTokenLink! ,
                );
              }
            },
            bgColor: white,
            txtColor: black,
            buttonText: getDownload(book),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              String txt = getText(book);
              if (txt == 'Free Preview') {
                launchCustomUrl(
                  context: context,
                  url: book.volumeInfo.previewLink!,
                );
              }
            },
            bgColor: yellow,
            txtColor: black,
            buttonText: getText(book),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return 'No Preview';
    }
    return 'Free Preview';
  }

  String getDownload(BookModel book) {
    if (book.accessInfo!.pdf!.acsTokenLink == null) {
      return 'No Download';
    }
    return 'Download';
  }
}
