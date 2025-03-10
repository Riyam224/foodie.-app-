// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:foodie/auth/presentation/views/login_view.dart';
import 'package:foodie/core/utils/app_colors.dart';
import 'package:foodie/core/utils/assets.dart';
import 'package:foodie/onboarding/presentation/widgets/page_view_item.dart';
import 'package:foodie/splash/presentation/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  static const routeName = 'onboarding';

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void nextPage() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Handle the action for "Get Started"
      print('Get Started pressed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page; // Update current page index
                });
              },
              children: [
                PageViewItem(
                  showSkip: true,
                  bg: Assets.imagesPagev2,
                  icon: Assets.imagesCard,
                  title: 'Order for Food',
                  subtitle:
                      'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                ),
                PageViewItem(
                  showSkip: true,
                  bg: Assets.imagesPagev3,
                  icon: Assets.imagesTransfer,
                  title: 'Easy Payment',
                  subtitle:
                      'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                ),
                PageViewItem(
                  showSkip: false,
                  bg: Assets.imagesPagev1,
                  icon: Assets.imagesDeliver,
                  title: 'Fast Delivery',
                  subtitle:
                      'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColors.orangeBase, // Active dot color
              dotColor: Colors.grey, // Inactive dots color
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4.0, // Optional: spacing between dots
            ),
          ),
          SizedBox(height: 20),

          //  custom button
          CustomButton(
            text: _currentPage < 2 ? 'Skip' : 'Get Started',
            color: AppColors.orangeBase,
            onPressed: () {
              if (_currentPage < 2) {
                // Skip logic here
                nextPage(); // Assuming nextPage() is already implemented
              } else {
                // Navigate to Login page when Get Started is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView(),
                  ), // Replace with your actual Login page
                );
              }
            },
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
