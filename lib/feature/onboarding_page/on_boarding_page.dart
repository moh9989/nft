import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_images.dart';
import 'package:nft/core/resourses/app_text.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(AppImages.onBoardingBackground),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 26, right: 26),
                  child: Text(
                    AppText.titleOnBording,
                    style: TextStyle(
                      color: AppColors.kColorWhite,
                      fontSize: AppFontSize.fontSize34,
                      fontFamily: AppFonts.sfProDisplay,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
