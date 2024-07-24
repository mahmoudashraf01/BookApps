import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/search/presentation/managers/cubit/search_for_book_cubit.dart';
import 'package:books_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:books_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final searchCubit = context.read<SearchForBookCubit>();
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .03, vertical: 20),
      child: Column(
        children: [
          CustomTextField(
            onChanged: (value) => searchCubit.fetchSearchBooks(bookName: value),
          ),
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
