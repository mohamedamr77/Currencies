import '../features/DetialsScreen/presentation/view_model/price_of_currency_in_bank_model.dart';
import '../helper/api.dart';

class GetPriceOfCurrencyInBank{
  Future<List<dynamic>> getPriceOfCurrencyInBank({required int id})async{
    Map<String, dynamic> jsonData = await Api().get(
        url: "https://bankeer.banker-eg.live/api/currencies/$id/banks");
    try {
      List<dynamic> dataList = jsonData["data"];
      List<PriceOfCurrencyInBankModel> currencyInBanksList = [];
      for (int i = 0; i < dataList.length; i++) {
        currencyInBanksList.add(PriceOfCurrencyInBankModel.fromJson(dataList[i]));
      }
      return currencyInBanksList;
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
}