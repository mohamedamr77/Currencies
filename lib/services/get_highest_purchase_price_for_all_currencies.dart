import 'package:digitaltransactions/features/ExchangeRates/presentation/view_model/model_highest_price.dart';
import 'package:digitaltransactions/helper/api.dart';

class GetHighestPurchasePriceForAllCurrencies{
 // ignore: non_constant_identifier_names
 Future<List<dynamic>> get_highest_purchase_price_for_all_currencies() async{
   Map<String,dynamic> jsonData=await Api().get(url: "https://Bankeer.Banker-eg.live/api/highest-purchase-price-for-all-currencies");
  List<dynamic> dataList=jsonData["data"];
  List<BankModel>   bankList=[];
  for (int i=0;i<=dataList.length;i++){
    bankList.add(BankModel.fromJson(dataList[i]));
  }
  return bankList;
 }
}