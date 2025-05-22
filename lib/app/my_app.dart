import 'package:flutter/material.dart';
import 'package:nft/core/resourses/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouteManager.route,
      initialRoute: RouteName.kOnBoardingPage,
    );
  }
}
