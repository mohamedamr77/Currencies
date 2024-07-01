import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/core/textstyle.dart';
import 'package:flutter/material.dart';
import '../../../../core/color.dart';
import '../../data/abbreviation_country.dart';
import '../../data/country_currency.dart';
import '../../data/limited_numbert_text.dart';

class CustomContainerHighestTradingPrices extends StatelessWidget {
  const CustomContainerHighestTradingPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height*0.02,
        left: MediaQuery.sizeOf(context).width*0.02,
        right:  MediaQuery.sizeOf(context).width*0.02,
        bottom:  MediaQuery.sizeOf(context).height*0.01,
      ),
      decoration: BoxDecoration(
        color: ColorApp.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child:  Column(
        mainAxisSize: MainAxisSize.min, // Adjust the container size to its content
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: [
              const CircleAvatar(
                child: Image(
                  image: AssetImage(ImageApp.americaImage),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width*0.035),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //CountryCurrency
                  CountryCurrency("دولار أمريكى ", fontSize: 16,),
                  AbbreviationOfTheCountry(text: 'USD '),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: LimitedNumberText(number: 48.48),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.rtl,
            children: [
              const CircleAvatar(
                radius: 14,
                child: Image(
                  image: AssetImage(ImageApp.americaImage),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              const SizedBox(width: 2),
              Flexible(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.38,
                  child: const Text(
                    "مصرف ابو ظبى الاسلامي ",
                    maxLines: 1,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyle(
                      color: ColorApp.secondaryTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Tajawal",
                      fontStyle: null,
                    )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}