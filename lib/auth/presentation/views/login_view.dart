import 'package:flutter/material.dart';
import 'package:foodie/auth/presentation/widgets/auth_custom_button.dart';
import 'package:foodie/core/utils/assets.dart';

import '../../../core/utils/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              color: AppColors.yellowBase,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.orangeBase,
                    ),
                  ),
                  Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Positioned.fill(child: Container(color: AppColors.yellowBase)),
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38, top: 20),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: Color(0xFF391713),
                        fontSize: 24,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 19),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: TextStyle(
                        color: Color(0xFF252525),
                        fontSize: 14,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w300,
                        height: 1,
                      ),
                    ),
                    SizedBox(height: 46),
                    Text(
                      'Email or Mobile Number',
                      style: TextStyle(
                        color: Color(0xFF391713),
                        fontSize: 20,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF3E9B5),
                        hintText: 'example@example.com',
                        hintStyle: TextStyle(
                          color: Color(0xFF391713),
                          fontSize: 16,
                          fontFamily: 'League Spartan',
                          fontWeight: FontWeight.w500,
                          height: 0.70,
                        ),
                      ),
                    ),
                    SizedBox(height: 22),
                    Text(
                      'Password ',
                      style: TextStyle(
                        color: Color(0xFF391713),
                        fontSize: 20,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF3E9B5),
                        hintText: '••••••••••••',
                        hintStyle: TextStyle(
                          color: Color(0xFF391713),
                          fontSize: 16,
                          fontFamily: 'League Spartan',
                          fontWeight: FontWeight.w500,
                          height: 0.70,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: AppColors.orangeBase,
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    SizedBox(
                      height: 23,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          'forget password',

                          style: TextStyle(
                            color: AppColors.orangeBase,
                            fontSize: 14,
                            fontFamily: 'League Spartan',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 61),
                    AuthCustomButton(
                      text: 'Log In',
                      color: AppColors.orangeBase,
                      onPressed: () {},
                      textColor: Colors.white,
                      width: 207,
                      height: 45,
                      borderRadius: 30,
                    ),
                    SizedBox(height: 29),
                    Center(
                      child: SizedBox(
                        width: 273,
                        height: 10,
                        child: Text(
                          'or sign up with',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF252525),
                            fontSize: 14,
                            fontFamily: 'League Spartan',
                            fontWeight: FontWeight.w300,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.imagesGoogle),
                        Image.asset(Assets.imagesFacebook),
                        Image.asset(Assets.imagesFingerprint),
                      ],
                    ),
                    SizedBox(height: 31.87),
                    Container(
                      width: 273,
                      height: 28,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              color: Color(0xFF391713),
                              fontSize: 14,
                              fontFamily: 'League Spartan',
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Sign up',
                            style: TextStyle(
                              color: AppColors.orangeBase,
                              fontSize: 14,
                              fontFamily: 'League Spartan',
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
