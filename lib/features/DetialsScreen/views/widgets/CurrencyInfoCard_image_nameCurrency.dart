import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../Dashboard/views/widgets/abbreviation_country.dart';

class CurrencyInfoCardImageNameCurrency extends StatelessWidget {
  const CurrencyInfoCardImageNameCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Column(
          children: [
            Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: ColorApp.backgroundColor,
                  ),
                  CircleAvatar(
                    radius: 32,
                    child: Image(image: AssetImage(ImageApp.americaImage),
                      fit: BoxFit.contain,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                ]
            ),
            SizedBox(height: 10,),
            Text("دولار أمريكى ",
              maxLines: 1,
              style: TextStyle(
                color: ColorApp.primaryTextColor,
                fontFamily: "Tajawal",
                fontSize:20,
              ),
            ),
            AbbreviationOfTheCountry(text: "USD"),
          ],
        )
    );
  }
}
