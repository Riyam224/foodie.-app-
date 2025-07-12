import 'package:flutter/material.dart';
import 'package:foodie/core/utils/app_colors.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.bg,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.showSkip = false, // New parameter to control visibility
  });

  final String bg;
  final String icon;
  final String title;
  final String subtitle;
  final bool showSkip; // New parameter for skip button visibility

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(child: Image.asset(bg, fit: BoxFit.cover)),
              if (showSkip) // Conditionally render the Skip button
                Positioned(
                  top: 53,
                  right: 20,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle the action for "Skip"
                          print('Skip pressed');
                          Navigator.pushReplacementNamed(context, 'nav');
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: AppColors.orangeBase,
                            fontSize: 17,
                            fontFamily: 'League Spartan',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.orangeBase,
                      ),
                    ],
                  ),
                ),
              Positioned(
                top: 412,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(height: 40),
            Image.asset(icon),
            SizedBox(height: 20.18),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFFE95322),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 19),
            SizedBox(
              width: 272,
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF391713),
                  fontSize: 14,
                  fontFamily: 'League Spartan',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
