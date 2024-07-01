import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:digitaltransactions/core/textstyle.dart';
import 'package:flutter/material.dart';

class BankBuyingSelling extends StatelessWidget {
  const BankBuyingSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top: 25, right: 26, left: 26),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          //  TextApp.bankText,
          CustomText(text: TextApp.bankText,),
          Spacer(flex: 2),
          // TextApp.sellingText,
          CustomText(text: TextApp.sellingText,),
          Spacer(flex: 1),
          //TextApp.buyingText,
          CustomText(text: TextApp.buyingText,),
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