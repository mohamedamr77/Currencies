import 'package:digitaltransactions/core/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/image.dart';
import '../Dashboard/views/widgets/custom_appbar.dart';
import '../Dashboard/views/widgets/description_listview_horizontal.dart';

class CalculatorPriceScreen extends StatelessWidget {
  const CalculatorPriceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10,bottom: 15),
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
            decoration: BoxDecoration(
              color: ColorApp.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),

          )
        ],
      )
    );
  }
}
