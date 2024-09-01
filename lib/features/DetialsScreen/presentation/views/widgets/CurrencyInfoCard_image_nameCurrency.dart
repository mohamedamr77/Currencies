import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/shared_widget/abbreviation_country.dart';

class CurrencyInfoCardImageNameCurrency extends StatelessWidget {
  const CurrencyInfoCardImageNameCurrency(
      {super.key,
      required this.name,
      required this.symbol,
      required this.image});
  final String name;
  final String symbol;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: ColorApp.backgroundColor,
              ),
              if (image.contains(".svg"))
                SvgPicture.network(
                  image,
                  width: 65,
                  height: 65,
                ),
              if (image.contains(".png") || image.contains(".jpg"))
                Image.network(
                  image,
                  width: 65,
                  height: 65,
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
            AbbreviationOfTheCountry(text: symbol),
          ],
        ));
  }
}
