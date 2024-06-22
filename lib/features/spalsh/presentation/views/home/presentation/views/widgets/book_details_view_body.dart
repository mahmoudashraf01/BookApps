import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/book_details.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/books_action.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                BookDetails(),
                SizedBox(
                  height: 20,
                ),
                BookAction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooks(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


