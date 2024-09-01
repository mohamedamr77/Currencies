import 'package:digitaltransactions/core/gold_price_model.dart';
import 'package:flutter/cupertino.dart';

import '../helper/api.dart';

class GetGoldPrice{
     Future<List<GoldAndSliverModel>>  getGoldPrice() async {
         Map<String, dynamic> jsonData = await Api().get(
             url:
             "https://Bankeer.banker-eg.live/api/gold-prices-egypt?country_id=2",
             token: "240|mB9ByNIvJ4qMX4kvnXwLWkZnN8Nb6R6zdf38wLGH"
         );
         try {
           List<dynamic> dataList = jsonData["data"];
           List<GoldAndSliverModel> goldPriceList = [];
           for (int i = 0; i < dataList.length; i++) {
             goldPriceList.add(GoldAndSliverModel.fromJson(dataList[i]));
           }
           debugPrint("$goldPriceList");
           return goldPriceList;
         } catch (e) {
           throw Exception("Failed to load products: $e");
         }
       }
     }