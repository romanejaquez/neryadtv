import 'package:go_router/go_router.dart';
import 'package:neryad_tv/pages/landing_page.dart';
import 'package:neryad_tv/pages/splash_page.dart';

class AppRoutes {

  static final router = GoRouter(
    initialLocation: SplashPage.route,
    routes: [
      GoRoute(
        path: SplashPage.route,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: LandingPage.route,
        builder: (context, state) {
          return const LandingPage();
        },
      )
    ]
  );
}