import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/book_details_view.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/home_view.dart';
import 'package:books_app/features/spalsh/presentation/views/splash_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );

  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
}
