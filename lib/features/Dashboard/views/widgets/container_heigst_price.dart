import 'package:flutter/material.dart';

import '../../../../core/color.dart';


class CustomContainerHighestTradingPrices extends StatelessWidget {
  const CustomContainerHighestTradingPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
        bottom: 15,

      ),
      decoration: BoxDecoration(
        color: ColorApp.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
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
                  image: AssetImage("assets/images/amreica.png"),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CountryCurrency("دولار أمريكى "),
                  AbbreviationOfTheCountry(text: 'USD '),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: LimitedNumberText(number: 48.48),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.rtl,
            children: [
              CircleAvatar(
                radius: 14,
                child: Image(
                  image: AssetImage("assets/images/amreica.png"),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(width: 2),
              Flexible(
                child: SizedBox(
                  width: 135,
                  child: Text(
                    "مصرف ابو ظبى الاسلامي ",
                    maxLines: 1,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff9a9cb8),
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Tajawal",
                    ),
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

class CountryCurrency extends StatelessWidget {
  final String text;

  const CountryCurrency(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');
    String truncatedText = words.length > 2 ? '${words[0]} ${words[1]}' : text;

    return Text(
      truncatedText,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        color: Color(0xff444555),
        fontSize: 16,
        fontFamily: "Tajawal",
      ),
    );
  }
}

class AbbreviationOfTheCountry extends StatelessWidget {
  final String text;

  const AbbreviationOfTheCountry({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');
    String truncatedText = words.length > 1 ? words[0] : text;

    return Text(
      truncatedText,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        color: Color(0XFF9a9cb8),
        fontSize: 16,
        fontFamily: "Tajawal",
      ),
    );
  }
}

class LimitedNumberText extends StatelessWidget {
  final double number;

  const LimitedNumberText({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    // Convert the number to a string with 2 decimal places
    String formattedNumber = number.toStringAsFixed(2);

    // Split the number into integer and decimal parts
    List<String> parts = formattedNumber.split('.');
    String part1 = parts[0]; // The part before the decimal
    String part2 = parts[1]; // The part after the decimal

    // Ensure part1 contains between 1 to 5 digits
    if (part1.length > 5) {
      part1 = part1.substring(0, 5);
    }

    // Ensure part2 contains exactly 2 digits
    part2 = part2.substring(0, 2);

    // Combine the parts back together
    String finalFormattedNumber = '$part1.$part2';

    return Text(
      finalFormattedNumber,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 20,
        color: Color(0xff14172c),
        fontWeight: FontWeight.w800,
        // fontFamily: "Tajawal",
      ),
    );
  }
}
