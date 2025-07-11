import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/feature/home_page/screen/home_screen.dart';
import 'package:nft/feature/home_page/widgets/custom_bottom_navigation_bar.dart';

import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';
import 'package:nft/feature/stats/screen/stats_page.dart';

class HomePage extends StatefulWidget {
 const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List<Widget> screens = [HomeScreen(), StatsPage()];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        onHomePressed: () {
          index = 0;
          setState(() {});
        },
        onStackedPressed: () {
          index = 1;
          setState(() {});
        },
        widthScreen: widthScreen,
      ),

      appBar:
          index == 0
              ? AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: CustomText(
                  fontWeight: FontWeight.bold,

                  text: AppText.homePageAppBarText,
                  color: AppColors.kColorWhite,
                  size: AppFontSize.fontSize25_23,
                ),
              )
              : index == 1
              ? AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: Text(AppText.stats),
                actions: [Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.more_horiz),
                )],
              )
              : AppBar(),
      body: screens[index],
      backgroundColor: AppColors.kHomePageBackground,
    );
  }
}
