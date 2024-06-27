import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/home/presentation/views/widgets/newest_book_view.dart';
import 'package:books_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .03, vertical: 20),
      child: Column(
        children: [
          const CustomTextField(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Your Results',
              style: title1Bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          // child: NewestBooksListViewItem(bookModel: ,),
        );
      },
    );
  }
}
