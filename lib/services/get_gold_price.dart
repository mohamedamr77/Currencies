import 'package:digitaltransactions/features/goldprices/presentation/view_model/gold_price_model.dart';
import 'package:flutter/cupertino.dart';

import '../helper/api.dart';

class GetGoldPrice{
     Future<List<GoldPriceModel>>  getGoldPrice() async {
         Map<String, dynamic> jsonData = await Api().get(
             url:
             "https://Bankeer.banker-eg.live/api/gold-prices-egypt?country_id=2",
             token: "240|mB9ByNIvJ4qMX4kvnXwLWkZnN8Nb6R6zdf38wLGH"
         );
         try {
           List<dynamic> dataList = jsonData["data"];
           List<GoldPriceModel> goldPriceList = [];
           for (int i = 0; i < dataList.length; i++) {
             goldPriceList.add(GoldPriceModel.fromJson(dataList[i]));
           }
           debugPrint("$goldPriceList");
           return goldPriceList;
         } catch (e) {
           throw Exception("Failed to load products: $e");
         }
       }
     }