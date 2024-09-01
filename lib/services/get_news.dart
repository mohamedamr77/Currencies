import 'package:digitaltransactions/features/economicnews/presentation/view_model/news_model.dart';
import 'package:flutter/cupertino.dart';

import '../helper/api.dart';

class GetNews{
  Future<List<NewsModel>>  getNews({required String type}) async {
    Map<String, dynamic> jsonData = await Api().get(
        url:
        "https://banker.banker-eg.live/api/news?tybe=$type",
        token: "240|mB9ByNIvJ4qMX4kvnXwLWkZnN8Nb6R6zdf38wLGH"
    );
    try {
      List<dynamic> dataList = jsonData["data"];
      List<NewsModel> newsList = [];
      for (int i = 0; i < dataList.length; i++) {
        newsList.add(NewsModel.fromJson(dataList[i]));
      }
      debugPrint("$newsList");
      return newsList;
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
}