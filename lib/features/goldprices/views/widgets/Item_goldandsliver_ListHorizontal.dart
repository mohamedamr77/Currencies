import 'package:flutter/material.dart';
import '../../../../../core/color.dart';
import '../../../../../core/shared_widget/abbreviation_country.dart';
import '../../../../../core/shared_widget/country_currency.dart';

class ItemGoldAndSliverListHorizontal extends StatelessWidget {
  const ItemGoldAndSliverListHorizontal({super.key, required this.imageCountry, required this.countryCurrency, required this.abbreviationCountry, required this.price});
  final String imageCountry;
  final String  abbreviationCountry;
  final  String   price;
   final String  countryCurrency;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.47,
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
              CircleAvatar(
                child: Image(
                  //ImageApp.americaImage
                  image: AssetImage(imageCountry),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width*0.035),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //CountryCurrency
                 const Text("أونصة ذهب",
                 style: TextStyle(
                   color: Color(0xff444555),
                 ),
                 ),
                  AbbreviationOfTheCountry(text: abbreviationCountry),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text(price,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff14172c),
            ),
            )
          ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 13),
           child: CountryCurrency(countryCurrency, fontSize: 14),
         )
        ],
      ),
    );
  }
}