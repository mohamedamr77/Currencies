import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import 'detials_body.dart';

class TransactionsBuyingSelling extends StatelessWidget {
  const TransactionsBuyingSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
        SizedBox(height: 5,),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            CustomNumberText(number: 213, colorText: ColorApp.deebBlueTextColor,),
            CustomNumberText(number: 47.32, colorText:ColorApp.deebBlueTextColor ,),
            CustomNumberText(number: -12, colorText: ColorApp.redColor,),
          ],
        ),
      ],
    );
  }
}
