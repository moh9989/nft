import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class CustomCatagory extends StatelessWidget {
  const CustomCatagory({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(27.3),

          child: Image(
            width: AppWidthSize.width1252_26,
            height: AppHeightSize.he167_57,
            image: AssetImage(image),
          ),
        ),
        Positioned(
          // bottom: 340,
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(0),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: AppBlurSize.blur2,
                sigmaY: AppBlurSize.blur2,
              ),
              child: Container(
                alignment: Alignment.center,
                height: AppHeightSize.he54,
                width: AppWidthSize.width1252_26,
                child: CustomText(
                  fontWeight: FontWeight.bold,
                  text: text,
                  color: AppColors.kColorWhite,
                  size: AppFontSize.fontSize19_82,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
