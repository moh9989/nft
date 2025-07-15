import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/feature/stats/widgets/custom_category_stats_page.dart';
import 'package:nft/feature/stats/widgets/custom_sub_tlte_stat_page.dart';

class CustomTitleStatPage extends StatelessWidget {
  const CustomTitleStatPage({
    super.key,
    
  });
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.kColorgrey,
                width: AppWidthSize.width_2,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSubTlteStatPage(
                isSelected: true,
                title: AppText.ranking,
                icon: Icons.stacked_bar_chart,
              ),
              SizedBox(width: AppWidthSize.width24),
              CustomSubTlteStatPage(
                isSelected: false,
                title: AppText.activity,
                icon: Icons.stacked_bar_chart_rounded,
              ),
            ],
          ),
        ),
        SizedBox(height: AppHeightSize.he10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCategoryStatsPage(
              title: AppText.allcategories,
              iconOne: CupertinoIcons.table_badge_more,
            ),

            CustomCategoryStatsPage(
              title: AppText.allChains,
              iconOne: CupertinoIcons.link,
            ),
          ],
        ),
        SizedBox(height: AppHeightSize.he10),
        ],
    );
  }
}
