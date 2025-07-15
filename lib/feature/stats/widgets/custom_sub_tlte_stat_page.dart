import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';

class CustomSubTlteStatPage extends StatelessWidget {
  const CustomSubTlteStatPage({
    super.key,
    required this.isSelected,
    required this.title,
    required this.icon,
  });
  final bool isSelected;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: () {}, icon: Icon(icon)),

            Text(
              title,
              style: TextStyle(
                color:
                    isSelected ? AppColors.kColorWhite : AppColors.kColorGrey,
                fontSize: AppFontSize.fontSize15_32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: AppHeightSize.he10),
        if (isSelected)
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: BlurRadius.blurRadius,
                  color: AppColors.colorShadow,
                  spreadRadius: SpreadRadius.spreadRadius,
                  offset: Offset(0, -5),
                ),
              ],
              color: AppColors.colorShadow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppBorderRadiusSize.borderRadius33_54),
                topRight: Radius.circular(
                  AppBorderRadiusSize.borderRadius33_54,
                ),
              ),
            ),

            // margin: EdgeInsets.only(left: 10, right: 10),
            width: AppWidthSize.width100,
            height: AppHeightSize.he3_6,
          ),
      ],
    );
  }
}
