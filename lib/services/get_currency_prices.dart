import '../features/ExchangeRates/presentation/view_model/currency_price_model.dart';
import '../helper/api.dart';

class GetCurrencyPrices{
 Future<List<CurrencyPriceModel>> getCurrencyPrices()async{
    Map<String, dynamic> jsonData = await Api().get(
        url: "https://banker.banker-eg.live/api/universal-prices",);
    try {
      List<dynamic> dataList = jsonData["data"];
      List<CurrencyPriceModel>  currencyList= [];
      for (int i = 0; i < dataList.length; i++) {
         currencyList.add(CurrencyPriceModel.fromJson(dataList[i]));
      }
      return currencyList;
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
  }