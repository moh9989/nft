import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_images.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/core/resourses/app_size.dart';

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
            ListView(
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
                SizedBox(height: AppHeightSize.heightSize331),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 27.3,
                    right: 27.3,
                    bottom: 27.3,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(27.3),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 27.3, sigmaY: 27.3),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.kColorWhite,
                            width: .09,
                          ),

                          color: AppColors.kColorWhite.withOpacity(0.1),
                        ),

                        width: AppwidthSize.widthSize306,
                        height: AppHeightSize.heightSize191,
                      ),
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
