// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:foodie/core/utils/app_colors.dart';

import '../../../core/utils/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, 'welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orange2,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesSplash1, fit: BoxFit.fill),
            SizedBox(height: 26.88),
            Image.asset(Assets.imagesYUMQUICK, fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
