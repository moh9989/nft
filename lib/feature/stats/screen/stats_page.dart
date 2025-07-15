import 'package:flutter/material.dart';
import 'package:nft/core/resourses/constants.dart';
import 'package:nft/feature/stats/widgets/custom_sub_tabel_stats_page.dart';
import 'package:nft/feature/stats/widgets/custom_title_stat_page.dart';
import 'dart:ui';

import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/models/sub_tabel_stats_page_model.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTitleStatPage(),
          ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(
              AppBorderRadiusSize.borderRadius27_3,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: AppBlurSize.blur27_3,
                sigmaY: AppBlurSize.blur27_3,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.kColorWhite.withOpacity(.1),

                  border: Border.all(width: BorderWidth.borderWidth_001),
                ),
                // height: heScreen,
                width: double.infinity,

                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:
                      (context, index) => CustomSubTabelStatsPage(
                        subTabelStatsPageModel: SubTabelStatsPageModel(
                          dis: "${index+84*15-2}%",
                          image: Constants.subTabelStatsPageModel[index].image,
                          id: index+1,
                          price: "${index+78*30520.5}",
                          selceded: index%2==0?true:false,
                          title: Constants.subTabelStatsPageModel[index].title,
                        ),

                     
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 0),
                  itemCount: Constants.subTabelStatsPageModel.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
