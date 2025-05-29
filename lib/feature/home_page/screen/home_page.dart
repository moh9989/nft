import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_colors.dart';
import 'package:nft/core/resourses/app_fonts.dart';
import 'package:nft/core/resourses/app_size.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/core/resourses/constants.dart';
import 'package:nft/feature/home_page/widgets/custom_bottom_navigation_bar.dart';
import 'package:nft/feature/home_page/widgets/custom_card_trending.dart';
import 'package:nft/feature/home_page/widgets/custom_catagory.dart';
import 'package:nft/feature/home_page/widgets/custom_hot_new_items.dart';
import 'package:nft/feature/home_page/widgets/custom_top_seller.dart';
import 'package:nft/feature/onboarding_page/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(widthScreen: widthScreen),

      backgroundColor: AppColors.kHomePageBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: CustomText(
          fontWeight: FontWeight.bold,

          text: AppText.homePageAppBarText,
          color: AppColors.kColorWhite,
          size: AppFontSize.fontSize25_23,
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: AppHeightSize.he222,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 27),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: AppWidthSize.width10),
                  itemCount: Constants.catogryList.length,
                  itemBuilder:
                      (context, index) => CustomCatagory(
                        image: Constants.catogryList[index].image,
                        text: Constants.catogryList[index].text,
                      ),
                ),
              ),
            ),
            SizedBox(height: AppHeightSize.he10),
            //Trending Collections
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: AppText.trendingCollections,
                  size: AppFontSize.fontSize15_32,
                ),
              ),
            ),
            SizedBox(height: AppHeightSize.he27),
            SizedBox(
              height: AppHeightSize.he200,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => CustomCardTrending(
                      image: Constants.trendingCollectionsModel[index].image,
                      text: Constants.trendingCollectionsModel[index].text,
                    ),
                separatorBuilder: (context, index) => SizedBox(width: AppWidthSize.width10),
                itemCount: Constants.trendingCollectionsModel.length,
              ),
            ),
            SizedBox(height: AppHeightSize.he27),
            //Top seller
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: AppText.topseller,
                  size: AppFontSize.fontSize15_32,
                ),
              ),
            ),
            SizedBox(height: AppHeightSize.he27),

            SizedBox(
              height: AppHeightSize.he236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => CustomTopSeller(
                      title: Constants.topSellerModel[index].title,
                      subtitle: Constants.topSellerModel[index].subtitle,
                      dis: Constants.topSellerModel[index].dis,
                      image: Constants.topSellerModel[index].image,
                    ),
                separatorBuilder: (context, index) => SizedBox(width: AppWidthSize.width10),
                itemCount: Constants.topSellerModel.length,
              ),
            ),
            SizedBox(height: AppHeightSize.he27),
            //Hot new items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: AppText.hotNewItems,
                  size: AppFontSize.fontSize15_32,
                ),
              ),
            ),
            SizedBox(height: AppHeightSize.he27),
            SizedBox(
              height: AppHeightSize.he236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => CustomHotNewItems(
                      
                      title: Constants.hotNewItems[index].title,
                      subtitle: Constants.hotNewItems[index].subtitle,
                      image: Constants.hotNewItems[index].image,
                      dis: Constants.hotNewItems[index].dis,
                    ),
                separatorBuilder: (context, index) => SizedBox(width: AppWidthSize.width10),
                itemCount: Constants.hotNewItems.length,
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
