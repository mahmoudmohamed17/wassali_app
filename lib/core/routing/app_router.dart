import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:wassali_app/core/routing/routes.dart';
import 'package:wassali_app/features/onboarding/views/onboarding_screen.dart';
import 'package:wassali_app/features/splash/splash_screen.dart';

/// Application Router
class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) {
          return CupertinoPage(key: state.pageKey, child: const SplashScreen());
        },
      ),
      GoRoute(
        path: Routes.onboarding,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: const OnboardingScreen(),
          );
        },
      ),
      GoRoute(
        path: Routes.login,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: const OnboardingScreen(),
          );
        },
      ),
    ],
  );
}
