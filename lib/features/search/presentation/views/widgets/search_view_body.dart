import 'package:books_app/core/utils/text.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_shimmer_loading_n_books.dart';
import 'package:books_app/features/home/presentation/views/widgets/newest_book_view_item.dart';
import 'package:books_app/features/search/presentation/managers/cubit/search_for_book_cubit.dart';
import 'package:books_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
  const SearchResultListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchForBookCubit, SearchForBookState>(
      builder: (context, state) {
        if (state is SearchForBookSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: NewestBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchForBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomShimmerLoadingNbooks(imagRatio: 2.6 / 4);
        }
      },
    );
  }
}
