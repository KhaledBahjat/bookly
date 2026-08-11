import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/core/routing/app_routs.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter router = GoRouter(
    initialLocation: AppRouts.splachView,
    routes: [
      GoRoute(
        path: AppRouts.splachView,
        builder: (context, state) => const SplashView(),
        name: AppRouts.splachView,
      ),
      GoRoute(
        path: AppRouts.searchView,
        builder: (context, state) => const SearchView(),
        name: AppRouts.searchView,
      ),
      GoRoute(
        path: AppRouts.homeView,
        builder: (context, state) => const HomeView(),
        name: AppRouts.homeView,
      ),
      GoRoute(
        path: AppRouts.bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
        name: AppRouts.bookDetailsView,
      ),
    ],
  );
}
