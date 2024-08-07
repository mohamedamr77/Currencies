import 'package:flutter/cupertino.dart';

class LimitedNumberText extends StatelessWidget {
  final double number;
 final TextStyle style;
  const LimitedNumberText({super.key, required this.number, required this.style});

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
      style: style,
    );
  }
}