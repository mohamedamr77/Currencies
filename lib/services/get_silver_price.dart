import 'package:flutter/cupertino.dart';
import '../core/gold_price_model.dart';
import '../helper/api.dart';

class GetSliverPrice{

  Future<List<GoldAndSliverModel>>  getSliverPrice() async {
    Map<String, dynamic> jsonData = await Api().get(
        url:
        "https://banker.banker-eg.live/api/silver-prices?country_id=1",
        token: "240|mB9ByNIvJ4qMX4kvnXwLWkZnN8Nb6R6zdf38wLGH"
    );
    try {
      List<dynamic> dataList = jsonData["data"];
      List<GoldAndSliverModel> sliverPriceList = [];
      for (int i = 0; i < dataList.length; i++) {
        sliverPriceList.add(GoldAndSliverModel.fromJson(dataList[i]));
      }
      debugPrint("$sliverPriceList");
      return sliverPriceList;
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
}