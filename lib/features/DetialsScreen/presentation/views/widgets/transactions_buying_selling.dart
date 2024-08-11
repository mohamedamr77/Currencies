import 'package:digitaltransactions/services/get_price_of_currency_in_bank.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/shared_widget/three_Text_Bank_buying_selling.dart';
import '../../view_model/price_of_currency_in_bank_model.dart';
import 'detials_body.dart';

class TransactionsBuyingSelling extends StatelessWidget {
  const TransactionsBuyingSelling({super.key, required this.sellingPrice, required this.buyingPrice,});
   final String sellingPrice;
   final String buyingPrice;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(text: "شراء"),
            CustomText(text: "بيع"),
            CustomText(text: "تغير"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            CustomNumberText(
              number: double.parse(sellingPrice),
              colorText: ColorApp.deebBlueTextColor,
            ),
            CustomNumberText(
              number: double.parse(buyingPrice),
              colorText: ColorApp.deebBlueTextColor,
            ),
            CustomNumberText(
              number: -12,
              colorText: ColorApp.redColor,
            ),
          ],
        ),
      ],
    );
  }
}
