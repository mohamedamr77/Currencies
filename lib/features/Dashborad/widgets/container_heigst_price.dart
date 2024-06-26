import 'package:flutter/material.dart';
import '../../../core/color.dart';
class CustomContainerHighestTradingPrices extends StatelessWidget {
  const CustomContainerHighestTradingPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 20,
          right: 10,
          left: 10,
          bottom: 15,
        ),
        // height: MediaQuery.sizeOf(context).height*0.224,
        // width: MediaQuery.sizeOf(context).width*0.52,
        decoration: BoxDecoration(
          color: ColorApp.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                  child: Image(image: AssetImage("assets/images/amreica.png",),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CountryCurrency("دولار أمريكى "),
                      AbbreviationOfTheCountry(text: 'USD ',),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 10,
                bottom: 10
              ),
              child: LimitedNumberText(number: 48.48),
            ),
            Expanded(
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  CircleAvatar(
                    radius: 14,
                    child: Image(image: AssetImage("assets/images/amreica.png",),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  SizedBox(width: 2,),
                  SizedBox(
                    width: 135,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("مصرف ابو ظبى الاسلامى ",
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
              ),
            )
          ],
        ),

    );
  }
}

class CountryCurrency extends StatelessWidget {
  final String text;

  CountryCurrency(this.text);

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');
    String truncatedText = words.length > 2 ? '${words[0]} ${words[1]}' : text;

    return Text(
      truncatedText,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.rtl,
      style: TextStyle(
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
    String truncatedText = words.length > 1 ? '${words[0]}' : text;

    return Text(
      truncatedText,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        color: Color(0XFF9a9cb8),
        fontSize: 16,
        fontFamily: "Tajawal",
      ),
    );
  }
}

class LimitedNumberText extends StatelessWidget {
  final double number;

  LimitedNumberText({required this.number});

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
      style: TextStyle(
        fontSize: 20,
        color: Color(0xff14172c),
        fontWeight: FontWeight.w800,
        // fontFamily: "Tajawal",
      ),
    );
  }
}



/*

// class LimitedNumberText extends StatelessWidget {
//   final String text;
//
//   LimitedNumberText({required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     String formattedText;
//     if (text.contains('.')) {
//       List<String> parts = text.split('.');
//       String part0 = parts[0].padLeft(2, '0').substring(0, 2);
//       String part1 = parts[1].padRight(2, '0').substring(0, 2);
//       formattedText = '$part0.$part1';
//     } else {
//       String part0 = text.padLeft(2, '0').substring(0, 2);
//       formattedText = '$part0.00';
//     }
//
//     return Text(
//       formattedText,
//       maxLines: 1,
//       style: TextStyle(
//         fontSize: 20,
//         color: Color(0xff14172c),
//         fontWeight: FontWeight.w800,
//         // fontFamily: "Tajawal",
//       ),
//     );
//   }
// }
 */