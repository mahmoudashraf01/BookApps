import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_shimmer_loading_n_books.dart';
import 'package:books_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/newest_book_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: NewestBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomShimmerLoadingNbooks(
            imagRatio: 2.6 / 4,
          );
        }
      },
    );
  }
}
