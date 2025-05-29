import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/core/resourses/route_manager.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class CustomMaterialButtonOnboarding extends StatelessWidget {
  const CustomMaterialButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kColorWhite.withAlpha(2),
          width: AppWidthSize.width_7,
        ),
        borderRadius: BorderRadius.circular(
          AppBorderRadiusSize.borderRadius33_54,
        ),
        color: AppColors.kMterialButtonColor,
      ),
      width: AppWidthSize.width198_2,
      height: AppHeightSize.he45_53,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          AppBorderRadiusSize.borderRadius33_54,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: AppBlurSize.blur27_3,
            sigmaY: AppBlurSize.blur27_3,
          ),
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(RouteName.kHomePage);
            },
            child: CustomText(
              text: AppText.mterialButtonText,
              color: AppColors.kColorWhite,
              size: AppFontSize.fontSize15_32,
            ),
          ),
        ),
      ),
    );
  }
}
