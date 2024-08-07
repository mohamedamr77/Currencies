import 'package:digitaltransactions/core/utils/color.dart';
import 'package:digitaltransactions/core/utils/textstyle.dart';
import 'package:flutter/material.dart';

class ThreeTextDescriptionListViewVertical extends StatelessWidget {
  const ThreeTextDescriptionListViewVertical({super.key,  required this.text1, required this.text2, required this.text3});
   final String text1;
   final String text2;
   final String text3;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 25, right: 26, left: 26),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          //  TextApp.BankText,
          CustomText(text: text1,),
          const Spacer(flex: 2),
          // TextApp.sellingText,
          CustomText(text: text2,),
          const Spacer(flex: 1),
          //TextApp.buyingText,
          CustomText(text: text3,),
        ],
      ),
    );
  }
}


class CustomText extends StatelessWidget{
  const CustomText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        textAlign: TextAlign.right,
        style: const CustomTextStyle(
          color: ColorApp.deebBlueTextColor,
          fontFamily: "Tajawal",
          fontSize: 16,
        )
    );
  }

}