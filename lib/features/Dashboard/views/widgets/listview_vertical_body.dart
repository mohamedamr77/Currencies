import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../../core/textstyle.dart';
import '../../data/country_currency.dart';

class ListviewVerticalBody extends StatelessWidget {
  const ListviewVerticalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: const Row(
        textDirection: TextDirection.rtl,
        children: [
          CircleAvatar(
            child: Image(
              image: AssetImage(ImageApp.americaImage),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SizedBox(width: 10),
          CountryCurrency("دولار أمريكى ", fontSize: 16,),
          Spacer(flex: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "45.48", // Replace with the actual buying price
                style: CustomTextStyle(
                  color: ColorApp.deebBlueTextColor,
                  fontFamily: "Tajawal",
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 62),
              Text(
                "48.50", // Replace with the actual selling price
                style: CustomTextStyle(
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
