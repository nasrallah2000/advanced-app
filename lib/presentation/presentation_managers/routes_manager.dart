
import 'package:advanced_app/presentation/screens/login/views/login_view.dart';
import 'package:advanced_app/presentation/screens/onboarding/views/onboarding_view.dart';
import 'package:advanced_app/presentation/screens/splash/views/splash_views.dart';
import 'package:flutter/material.dart';
import 'package:advanced_app/presentation/presentation_managers/exports.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onboardingRoute = '/onboardingRoute';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPasswor';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RoutesGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
