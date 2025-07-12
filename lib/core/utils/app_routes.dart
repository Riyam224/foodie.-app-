import 'package:flutter/material.dart';
import 'package:foodie/heart_view.dart';
import 'package:foodie/home_view.dart';
import 'package:foodie/menu_view.dart';
import 'package:foodie/nav.dart';
import 'package:foodie/plate_view.dart';

import '../../auth/presentation/views/login_view.dart';
import '../../chat_view.dart';
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
    case NavView.routeName:
      return MaterialPageRoute(builder: (_) => NavView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => HomeView());
    case PlateView.routeName:
      return MaterialPageRoute(builder: (_) => PlateView());
    case MenuView.routeName:
      return MaterialPageRoute(builder: (_) => MenuView());
    case HeartView.routeName:
      return MaterialPageRoute(builder: (_) => HeartView());
    case ChatView.routeName:
      return MaterialPageRoute(builder: (_) => ChatView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
