import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_size.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.widthScreen,
    required this.onHomePressed,
    required this.onStackedPressed,
  });
  final double widthScreen;

  final VoidCallback onHomePressed;
  final VoidCallback onStackedPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHeightSize.he100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppBorderRadiusSize.borderRadius27_3),
                topRight: Radius.circular(AppBorderRadiusSize.borderRadius27_3),
              ),
              //
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  alignment: Alignment.center,
                  width: widthScreen,
                  height: AppHeightSize.he60,

                  decoration: BoxDecoration(
                    color: AppColors.kColorWhite.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: onHomePressed,
                        icon: Icon(Icons.home_outlined),
                      ),
                      IconButton(
                        onPressed: onStackedPressed,
                        // () {
                        //   Navigator.of(context).pushNamed(RouteName.kStatsPage);
                        // },
                        icon: Icon(Icons.stacked_bar_chart),
                      ),
                      Icon(Icons.search),
                      Icon(Icons.person_outline),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: AppPositionedSize.positionedTop,
            child: Container(
              decoration: ShapeDecoration(
                color: AppColors.kColorWhite.withOpacity(.5),
                shape: StarBorder.polygon(pointRounding: .3, sides: 6),
              ),

              height: AppHeightSize.he70,
              width: AppWidthSize.width70,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: AppColors.kColorWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
