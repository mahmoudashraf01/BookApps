import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/search/data/repos/search_rep_impl.dart';
import 'package:books_app/features/search/presentation/managers/cubit/search_for_book_cubit.dart';
import 'package:books_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => SearchForBookCubit(
            getIt.get<SearchRepoImpl>(),
          )..fetchSearchBooks(bookName: 'Programming'),
          child: const SearchViewBody(),
        ),
      ),
    );
  }
}
