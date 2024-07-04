import 'package:flutter/material.dart';

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
        //Color(0xff9a9cb8),
        fontSize: 16,
        fontFamily: "Tajawal",
      ),
    );
  }
}