import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/image.dart';
import '../Dashboard/views/widgets/custom_appbar.dart';
import '../Dashboard/views/widgets/description_listview_horizontal.dart';
import '../Dashboard/views/widgets/vertical_horizontal_participants_widget/country_currency.dart';

class CalculatorPriceScreen extends StatefulWidget {
  const CalculatorPriceScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(top: 10, bottom: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageApp.appBarBGDetailsImage),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                CustomAppbar(text: "حاسة الاسعار", action: Image(image: AssetImage(ImageApp.actionDashboardImage))),
                DescriptionListviewHorizontal(text: "حدد العملة المراد تحويلها"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorApp.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
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