import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/core/routing/app_routs.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter router = GoRouter(
    initialLocation: AppRouts.splachView,
    routes: [
      GoRoute(
        path: AppRouts.splachView,
        builder: (context, state) => SplashView(),
        name: AppRouts.splachView,
      ),
      GoRoute(
        path: AppRouts.bookDetailsView,
        builder: (context, state) => BookDetailsView(),
        name: AppRouts.bookDetailsView,
      ),
    ],
  );
}
