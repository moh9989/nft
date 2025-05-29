import 'package:flutter/material.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_Container_onboarding_page.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_image_onboarding_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomImageOnboardingPage(),
            CustomContainerOnboardingPage(),
          ],
        ),
      ),
    );
  }
}
