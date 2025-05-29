import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_names_images.dart';

class CustomImageOnboardingPage extends StatelessWidget {
  const CustomImageOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(AppNamesImages.onBoardingBackground),
    );
  }
}
