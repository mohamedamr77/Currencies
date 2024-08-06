import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/core/text.dart';

import 'drawer_listview_model.dart';

List<DrawerModel> drawerList = [
  DrawerModel(
      image: ImageApp.exchangeRatesImage, title: TextApp.titleCenterDashboard),
  DrawerModel(
      image: ImageApp.priceCalculatorImage, title: TextApp.priceCalculatorText),
  DrawerModel(image: ImageApp.goldPricesImage, title: TextApp.goldPricesText),
  DrawerModel(
      image: ImageApp.priceCalculatorImage, title: TextApp.goldCalculatorText),
  DrawerModel(
      image: ImageApp.silverPricesImage, title: TextApp.silverPricesText),
  DrawerModel(
      image: ImageApp.silverPricesImage, title: TextApp.economicNewsText),
  DrawerModel(image: ImageApp.silverPricesImage, title: TextApp.settingText),
];
