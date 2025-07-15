import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_names_images.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/models/sub_tabel_stats_page_model.dart';

class CustomSubTabelStatsPage extends StatelessWidget {
  const CustomSubTabelStatsPage({super.key, required this.subTabelStatsPageModel});
  final SubTabelStatsPageModel subTabelStatsPageModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPaddingSize.padding14),
      child: Row(
        children: [
          Text(
            "${subTabelStatsPageModel.id }",
            style: TextStyle(
              fontSize: AppFontSize.fontSize13_51,
              color: AppColors.kColorGrey,
            ),
          ),
          SizedBox(width: AppHeightSize.he10),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image(
              fit: BoxFit.cover,
              width: AppWidthSize.width39,
              height: AppHeightSize.he39,
              image: AssetImage(subTabelStatsPageModel.image),
            ),
          ),
          SizedBox(width: AppWidthSize.width10),

          Container(
            width: AppWidthSize.width115,
            height: AppHeightSize.he39,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subTabelStatsPageModel.title,
                  style: TextStyle(
                    fontSize: AppFontSize.fontSize15_32,
                    color: AppColors.kColorWhite,
                  ),
                ),
                Text(
                  "view info",
                  style: TextStyle(
                    fontSize: AppFontSize.fontSize11,
                    color: AppColors.kColorGrey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 60),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image(
                    fit: BoxFit.cover,
                    image: AssetImage(AppNamesImages.smallImage),
                    height: AppHeightSize.he13_5,
                    width: AppWidthSize.width10,
                  ),
                  SizedBox(width: AppWidthSize.width5),

                  Text(
                    subTabelStatsPageModel.price,
                    style: TextStyle(fontSize: AppFontSize.fontSize13_51),
                  ),
                ],
              ),
              Text(
                subTabelStatsPageModel.dis,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize11,
                  color:subTabelStatsPageModel. selceded ? AppColors.kColorGreen : AppColors.kColorRed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
