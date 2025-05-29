import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class CustomHotNewItems extends StatelessWidget {
  const CustomHotNewItems({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.dis,
  });
  final String title;
  final String subtitle;
  final String image;
  final String dis;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(
        AppBorderRadiusSize.borderRadius27_3,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
        child: Container(
          //alignment: Alignment.center,
          width: AppWidthSize.width157_6,
          height: AppHeightSize.he236,
          decoration: BoxDecoration(
            color: AppColors.kColorWhite.withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                      // width: 130,
                      // height: 130,
                      height: AppHeightSize.he140,
                      width: AppWidthSize.width140,
                    ),
                  ),
                ),
                CustomText(
                  text: title,
                  color: AppColors.kColorWhite,
                  size: AppFontSize.fontSize11,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: subtitle,
                  color: AppColors.kColorgrey,
                  size: AppFontSize.fontSize10,
                ),
                SizedBox(height: AppHeightSize.he10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: dis, size: AppFontSize.fontSize11),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          size: 20,
                          color: AppColors.kColorRed,
                        ),
                        CustomText(
                          text: "200",
                          fontWeight: FontWeight.normal,
                          size: AppFontSize.fontSize11,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
