import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 217, 232),
      body: Center(
        child: Text(
          'home',
          style: TextStyle(fontSize: 40, color: Colors.purpleAccent),
        ),
      ),
    );
  }
}
