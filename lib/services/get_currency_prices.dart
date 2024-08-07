import '../features/ExchangeRates/presentation/view_model/currency_price_model.dart';
import '../helper/api.dart';

class GetCurrencyPrices{
 Future<List<CurrencyPriceModel>> getCurrencyPrices()async{
    Map<String, dynamic> jsonData = await Api().get(
        url: "https://bankeer.banker-eg.live/api/currencies-prices",token: "240|mB9ByNIvJ4qMX4kvnXwLWkZnN8Nb6R6zdf38wLGH");
    try {
      List<dynamic> dataList = jsonData["data"];
      List<CurrencyPriceModel>  currencyList= [];
      for (int i = 0; i < dataList.length; i++) {
        // currencyList.add(CurrencyPriceModel.fromJson(dataList[i]));
        currencyList.add(CurrencyPriceModel
          (
            id: dataList[i]["id"],
            name: dataList[i]["name"],
            icon: dataList[i]["icon"],
            purchasingPrice: dataList[i]["purchasing_price"],
            sellingPrice: dataList[i]["selling_price"])
        );
      }
      return currencyList;
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
  }