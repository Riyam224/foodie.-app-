// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:foodie/core/utils/assets.dart' show Assets;

import '../../../core/utils/app_colors.dart';
import '../widgets/custom_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  static const routeName = 'welcome';

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeBase,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesWelcome, fit: BoxFit.fill),
            SizedBox(height: 26.88),
            Image.asset(Assets.imagesYUMQUICK2, fit: BoxFit.fill),
            SizedBox(height: 30.04),
            SizedBox(
              width: 295,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'League Spartan',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ),
            SizedBox(height: 43),
            CustomButton(
              text: 'Log In',
              color: AppColors.yellowBase,
              textColor: AppColors.orangeBase,
            ),
            SizedBox(height: 10),
            CustomButton(
              text: 'Sign Up',
              color: AppColors.yellow2,
              textColor: AppColors.orangeBase,
            ),
          ],
        ),
      ),
    );
  }
}
