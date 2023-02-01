import 'package:bookapp/src/page/home/widget/coming_book.dart';
import 'package:bookapp/src/page/home/widget/custom_app_bar.dart';
import 'package:bookapp/src/page/home/widget/recommended_book.dart';
import 'package:bookapp/src/page/home/widget/trending_book.dart';
import 'package:bookapp/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.settingsController});

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(settingsController: settingsController),
          ComingBook(),
          RecommendedBook(),
          TrendingBook(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  BottomNavigationBar _buildBottomNavigation() {
    return BottomNavigationBar(
      
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: const Color(0xFF6741FF),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Book',
          icon: Icon(Icons.menu_book_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Column',
          icon: Icon(Icons.view_week_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Person',
          icon: Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
