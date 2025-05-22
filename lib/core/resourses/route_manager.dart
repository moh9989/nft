import 'package:flutter/material.dart';
import 'package:nft/feature/onboarding_page/on_boarding_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> route = {
    RouteName.kOnBoardingPage: (context) => OnBoardingPage(),
  };
}

class RouteName {
  static String kOnBoardingPage = "On_Boarding_Page";
}
