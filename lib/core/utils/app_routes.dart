import 'package:flutter/material.dart';

import '../../auth/presentation/views/login_view.dart';
import '../../onboarding/presentation/views/onboarding_view.dart';
import '../../splash/presentation/views/splash_view.dart';
import '../../splash/presentation/views/welcome_view.dart';

Route<dynamic> nGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // todo splash
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case WelcomeView.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    //  todo auth
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
