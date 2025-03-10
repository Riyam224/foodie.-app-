import 'package:flutter/material.dart';
import 'package:foodie/splash/presentation/views/splash_view.dart';
import 'core/utils/app_routes.dart';

void main() {
  runApp(Foodie());
}

class Foodie extends StatelessWidget {
  const Foodie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: nGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
