import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_card_onboarding.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class CustomContainerOnboardingPage extends StatelessWidget {
  const CustomContainerOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 26, right: 26),
            child: CustomText(
              fontWeight: FontWeight.bold,

              text: AppText.titleOnBording,
              color: AppColors.kColorWhite,
              size: AppFontSize.fontSize34,
            ),
          ),
          SizedBox(height: AppHeightSize.he331_54),
          Padding(
            padding: const EdgeInsets.only(
              left: 27.3,
              right: 27.3,
              bottom: 27.3,
            ),
            child: CustomCardOnboarding(),
          ),
        ],
      ),
    );
  }
}
