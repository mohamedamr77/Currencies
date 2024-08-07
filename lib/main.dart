import 'package:digitaltransactions/services/get_currency_prices.dart';
import 'package:digitaltransactions/services/get_price_of_currency_in_bank.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'core/utils/routes.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  GetPriceOfCurrencyInBank().getPriceOfCurrencyInBank(id: 13);
  runApp(const MyApp());
  //mohamed amr
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }

}