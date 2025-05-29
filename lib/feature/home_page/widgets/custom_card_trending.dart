import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class CustomCardTrending extends StatelessWidget {
  const CustomCardTrending({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  final bool isLike = true;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(
        AppBorderRadiusSize.borderRadius27_3,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
        child: Container(
          alignment: Alignment.center,
          width: AppWidthSize.width157_6,
          height: AppHeightSize.he194_8,
          decoration: BoxDecoration(
            color: AppColors.kColorWhite.withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                      height: AppHeightSize.he140,
                      width: AppWidthSize.width140,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: text, size: AppFontSize.fontSize11),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          size: 20,
                          color: isLike ? AppColors.kColorRed : null,
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
