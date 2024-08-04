import 'package:digitaltransactions/core/textstyle.dart';
import 'package:flutter/material.dart';
import '../../../../../core/color.dart';
import '../../../../../core/shared_widget/abbreviation_country.dart';
import '../../../../../core/shared_widget/country_currency.dart';
import '../../../../../core/shared_widget/limited_numbert_text.dart';
import '../../../../DetialsScreen/screen.dart';

class ItemExchangeRatesListHorizontal extends StatelessWidget {
  const ItemExchangeRatesListHorizontal(
      {super.key,
      required this.imageCountry,
      required this.imageBank,
      required this.countryCurrency,
      required this.abbreviationCountry,
      required this.price,
      required this.nameBank});
  final String imageCountry;
  final String imageBank;
  final String countryCurrency;
  final String abbreviationCountry;
  final double price;
  final String nameBank;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailsScreen(),
            ));
      },
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.sizeOf(context).height * 0.02,
          left: MediaQuery.sizeOf(context).width * 0.02,
          right: MediaQuery.sizeOf(context).width * 0.02,
          bottom: MediaQuery.sizeOf(context).height * 0.01,
        ),
        decoration: BoxDecoration(
          color: ColorApp.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Adjust the container size to its content
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                  child: Image(
                    //ImageApp.americaImage
                    image: AssetImage(imageCountry),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.035),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //CountryCurrency
                    CountryCurrency(
                      countryCurrency,
                      fontSize: 16,
                    ),
                    AbbreviationOfTheCountry(text: abbreviationCountry),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: LimitedNumberText(number: price),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                  radius: 14,
                  child: Image(
                    image: AssetImage(imageBank),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                const SizedBox(width: 2),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.38,
                    child: Text(nameBank,
                        maxLines: 1,
                        textDirection: TextDirection.rtl,
                        overflow: TextOverflow.ellipsis,
                        style: const CustomTextStyle(
                          color: ColorApp.secondaryTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Tajawal",
                          fontStyle: null,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
