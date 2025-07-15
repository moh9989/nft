import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';

class CustomCategoryStatsPage extends StatelessWidget {
  const CustomCategoryStatsPage({
    super.key,
    required this.title,
    required this.iconOne,
  });
  final String title;
  final IconData iconOne;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 147,
      height: 39,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(.1),
        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: AppColors.colorShadow, width: .5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconOne, color: AppColors.kColorGrey, size: 20),
          Text(title),
          Icon(Icons.arrow_drop_down, color: AppColors.kColorGrey, size: 20),
        ],
      ),
    );
  }
}
