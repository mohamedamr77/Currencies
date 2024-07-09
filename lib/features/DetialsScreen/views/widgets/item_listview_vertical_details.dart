import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/shared_widget/country_currency.dart';
import '../../../../core/textstyle.dart';

class ItemListviewVerticalDetails extends StatelessWidget {
  const ItemListviewVerticalDetails({super.key, required this.widget, required this.sellingPrice, required this.buyingPrice, required this.nameWidget});
  final Widget widget;
  final double sellingPrice;
  final double buyingPrice;
  final String nameWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child:  Row(
        textDirection: TextDirection.rtl,
        children: [
          CircleAvatar(
            child: widget,
          ),
          const SizedBox(width: 10),
          CountryCurrency(nameWidget, fontSize: 16,),
          const Spacer(flex: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$sellingPrice", // Replace with the actual buying price
                style: const CustomTextStyle(
                  color: ColorApp.deebBlueTextColor,
                  fontFamily: "Tajawal",
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 62),
              Text(
                "$buyingPrice", // Replace with the actual selling price
                style: const CustomTextStyle(
                  color: ColorApp.deebBlueTextColor,
                  fontFamily: "Tajawal",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
