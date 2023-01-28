import 'package:bookapp/src/page/home/widget/coming_book.dart';
import 'package:bookapp/src/page/home/widget/custom_app_bar.dart';
import 'package:bookapp/src/page/home/widget/recommended_book.dart';
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
        ],
      )
    );
  }
}