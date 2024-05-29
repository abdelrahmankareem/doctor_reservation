import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/login/ui/login_screen.dart';
import 'package:doctor/features/onboarding/ui/onboarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRout(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No Screen Found ${settings.name}"),
                  ),
                ));
    }
  }
}
