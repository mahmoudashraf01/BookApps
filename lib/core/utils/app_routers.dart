import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:books_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:books_app/features/home/presentation/views/book_details_view.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/search/data/repos/search_rep_impl.dart';
import 'package:books_app/features/search/presentation/managers/cubit/search_for_book_cubit.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:books_app/features/spalsh/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchForBookCubit(
            getIt.get<SearchRepoImpl>(),
          ),
          child: const SearchView(),
        ),
      ),
    ],
  );

  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
}
