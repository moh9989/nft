import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_material_button_onboarding.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class CustomCardOnboarding extends StatelessWidget {
  const CustomCardOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(
        AppBorderRadiusSize.borderRadius27_3,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: AppBlurSize.blur27_3,
          sigmaY: AppBlurSize.blur27_3,
        ),
        child: Container(
          padding: EdgeInsets.all(AppPaddingSize.padding20),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.kColorWhite,
              width: BorderWidth.borderWidth_001,
            ),
          ),

          width: AppWidthSize.width306_31,
          height: AppHeightSize.he191_2,

          child: Column(
            children: [
              CustomText(
                fontWeight: FontWeight.bold,

                text: AppText.titleCard,
                color: AppColors.kColorgrey,
                size: AppFontSize.fontSize19_82,
              ),
              SizedBox(height: AppHeightSize.he5_4),
              CustomText(
                text: AppText.subTitleCard,
                size: AppFontSize.fontSize11,
                color: AppColors.kColorgrey,
              ),
              SizedBox(height: AppHeightSize.he27),
              CustomMaterialButtonOnboarding(),
            ],
          ),
        ),
      ),
    );
  }
}
