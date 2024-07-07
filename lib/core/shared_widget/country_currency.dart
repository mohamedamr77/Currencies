import 'package:flutter/material.dart';

class CountryCurrency extends StatelessWidget {
  final String text;
  final double fontSize;
  const CountryCurrency(this.text, {super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');
    String truncatedText = words.length > 2 ? '${words[0]} ${words[1]}' : text;

    return Text(
      truncatedText,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.rtl,
      style:  TextStyle(
        color: const Color(0xff444555),
        //Color(0xff9a9cb8),
        fontSize: fontSize ,
        fontFamily: "Tajawal",
      ),
    );
  }
}