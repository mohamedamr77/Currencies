import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/abbreviation_country.dart';

class CurrencyInfoCardImageNameCurrency extends StatelessWidget {
  const CurrencyInfoCardImageNameCurrency({super.key, required this.name, required this.symbol});
  final String name;
  final String symbol;
  @override
  Widget build(BuildContext context) {
    return  Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Column(
          children: [
            const Stack(alignment: Alignment.center, children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: ColorApp.backgroundColor,
              ),
              CircleAvatar(
                radius: 32,
                child: Image(
                  image: AssetImage(ImageApp.americaImage),
                  fit: BoxFit.contain,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            Text(
             name,
              maxLines: 1,
              style: const TextStyle(
                color: ColorApp.primaryTextColor,
                fontFamily: "Tajawal",
                fontSize: 20,
              ),
            ),
            AbbreviationOfTheCountry(text: symbol ),
          ],
        ));
  }
}
