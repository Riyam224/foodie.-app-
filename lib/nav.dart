import 'package:flutter/material.dart';
import 'package:foodie/core/utils/app_colors.dart';
import 'package:foodie/home_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'chat_view.dart';
import 'heart_view.dart';
import 'menu_view.dart';
import 'plate_view.dart';

class NavView extends StatefulWidget {
  static const String routeName = 'nav';

  @override
  _NavViewState createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomeView(),
    const PlateView(),
    const HeartView(),
    const MenuView(),
    const ChatView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),

        decoration: BoxDecoration(color: AppColors.orangeBase),
        child: GNav(
          gap: 8,
          color: AppColors.orange2,
          activeColor: Colors.white,
          iconSize: 24,
          padding: const EdgeInsets.all(16),
          tabBackgroundColor: Colors.white.withOpacity(0.1),
          tabBorderRadius: 4,
          tabs: [
            GButton(icon: Icons.home_outlined),
            GButton(icon: Icons.playlist_remove),
            GButton(icon: Icons.heart_broken_outlined),
            GButton(icon: Icons.menu_book_outlined),
            GButton(icon: Icons.chat_bubble_outline),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
