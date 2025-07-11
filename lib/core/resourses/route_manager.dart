import 'package:flutter/material.dart';
import 'package:nft/feature/home_page/screen/home_page.dart';
import 'package:nft/feature/onboarding_page/screen/on_boarding_page.dart';
import 'package:nft/feature/stats/screen/stats_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> route = {
    RouteName.kOnBoardingPage: (context) => OnBoardingPage(),
     RouteName.kHomePage: (context) => HomePage(),
          RouteName.kStatsPage: (context) => StatsPage(),

  };
}

class RouteName {
  static String kOnBoardingPage = "On_Boarding_Page";
    static String kHomePage = "HomePage";
    static String kStatsPage = "StatsPage";

}
