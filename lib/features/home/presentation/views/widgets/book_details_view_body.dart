import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/presentation/views/widgets/book_details.dart';
import 'package:books_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:books_app/features/home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                BookDetails(
                  book: book,
                ),
                const SizedBox(
                  height: 20,
                ),
                BookAction(
                  book: book,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooks(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
