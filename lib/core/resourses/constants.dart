import 'package:nft/core/resourses/app_names_images.dart';
import 'package:nft/core/resourses/app_text.dart';
import 'package:nft/models/catogry_model.dart';
import 'package:nft/models/hot_new_items.dart';
import 'package:nft/models/sub_tabel_stats_page_model.dart';
import 'package:nft/models/top_seller_model.dart';
import 'package:nft/models/trending_collections_model.dart';

class Constants {
  static List<CatogryModel> catogryList = [
    CatogryModel(text: AppText.musicContainer, image: AppNamesImages.music),
    CatogryModel(text: AppText.artContainer, image: AppNamesImages.art),
    CatogryModel(
      text: AppText.virualContainer,
      image: AppNamesImages.virualWorlds,
    ),
  ];

  static List<TrendingCollectionsModel> trendingCollectionsModel = [
    TrendingCollectionsModel(
      image: AppNamesImages.art_3D,
      text: AppText.art_3D,
      isLike: true,
    ),
    TrendingCollectionsModel(
      image: AppNamesImages.abstractArt,
      text: AppText.abstractArt,
      isLike: true,
    ),

    TrendingCollectionsModel(
      image: AppNamesImages.portraitArtrt,
      text: AppText.portraitArt,
      isLike: true,
    ),
  ];

  static List<TopSellerModel> topSellerModel = [
    TopSellerModel(
      image: AppNamesImages.pink,
      subtitle: AppText.subTitleAbstractPink,
      dis: AppText.disAbstractPink,
      title: AppText.tilteAbstractPink,
      isLike: true,
    ),
    TopSellerModel(
      image: AppNamesImages.wave,
      subtitle: AppText.subtitleWave,
      dis: AppText.disWave,
      title: AppText.titleWave,
      isLike: true,
    ),
    TopSellerModel(
      image: AppNamesImages.wave2,
      subtitle: AppText.subtitleWave2,
      dis: AppText.disWave2,
      title: AppText.titleWave,
      isLike: true,
    ),
  ];

  static List<HotNewItems> hotNewItems = [
    HotNewItems(
      image: AppNamesImages.ball,
      title: AppText.titleBall,
      subtitle: AppText.subtitleBall,
      dis: AppText.disBall,
      islike: true,
    ),
    HotNewItems(
      image: AppNamesImages.rink,
      title: AppText.titleRink,
      subtitle: AppText.subTitleRink,
      dis: AppText.disRink,
      islike: true,
    ),
    HotNewItems(
      image: AppNamesImages.music2,
      title: AppText.titleMusic,
      subtitle: AppText.subTitleMusic,
      dis: AppText.disMusic,
      islike: true,
    ),
  ];
  static List<SubTabelStatsPageModel> subTabelStatsPageModel = [
    SubTabelStatsPageModel(
      selceded: true,
      dis: '10101010',
      image: AppNamesImages.azumi,
      id: 1,
      price: '58787%',
      title: AppText.azumi,
    ),
    SubTabelStatsPageModel(
      dis: '20',
      selceded: false,
      image: AppNamesImages.hapePrime,
      id: 2,
      price: '2020202%',
      title: AppText.hapePrime,
    ),
    SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.cryoto,
      id: 3,
      price: '58858%',
      title: AppText.cryoto,
    ),
      SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.apeClub,
      id: 3,
      price: '58858%',
      title: AppText.apeclub,
    ), SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.bat,
      id: 3,
      price: '58858%',
      title: AppText.bat,
    ),SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.metaverse,
      id: 3,
      price: '58858%',
      title: AppText.metaverse,
    ),
    SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.mountain,
      id: 3,
      price: '58858%',
      title: AppText.mountain,
    ),
     SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.mutantApe,
      id: 3,
      price: '58858%',
      title: AppText.mutantApe,
    ), SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.mutant,
      id: 3,
      price: '58858%',
      title: AppText.mutant,),
  
    SubTabelStatsPageModel(
      selceded: true,
      dis: '45',
      image: AppNamesImages.theSandbox,
      id: 3,
      price: '58858%',
      title: AppText.theSandbox,
    ),
  ];
}
