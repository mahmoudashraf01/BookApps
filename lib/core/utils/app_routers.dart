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
    ],
  );

  static const kHomeView = '/HomeView';
}
