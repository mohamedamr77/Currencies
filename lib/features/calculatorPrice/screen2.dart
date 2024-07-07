import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:flutter/material.dart';
import '../../core/image.dart';
import '../../core/shared_widget/custom_appbar.dart';
import '../../core/shared_widget/description_listview_horizontal.dart';
import '../../core/shared_widget/country_currency.dart';

class CalculatorPriceScreen extends StatefulWidget {
  const CalculatorPriceScreen({super.key});

  @override
  State<CalculatorPriceScreen> createState() => _CalculatorPriceScreenState();
}

class _CalculatorPriceScreenState extends State<CalculatorPriceScreen> {

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageApp.appBarBGDetailsImage),
                fit: BoxFit.fill,
              ),
            ),
            child: const Column(
              children: [
                CustomAppbar(text: "حاسة الاسعار"),
                DescriptionListviewHorizontal(text: "حدد العملة المراد تحويلها"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorApp.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ExpansionTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Row(
                          children: [
                            CountryCurrency(TextApp.dollarText, fontSize: 16,),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              child: Image(
                                image: AssetImage(ImageApp.americaImage),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        textDirection: TextDirection.rtl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 24),
                        ),
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// class CalculatorPriceModel{
//   final String image;
//   final String text;
//   final double price;
//   CalculatorPriceModel(
//   {
//     required this.image,
//     required this.text,
//     required this.price,
//
// }
//       );
// }
/*
  Expanded(
//             child: TextField(
//               textDirection: TextDirection.rtl,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//
//                 hintStyle: TextStyle(fontSize: 24),
//               ),
//               style: TextStyle(fontSize: 24),
//               textAlign: TextAlign.end,
//             ),
//           ),
 */