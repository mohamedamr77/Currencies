import 'package:flutter/material.dart';
import '../color.dart';
class DescriptionListviewHorizontal extends StatelessWidget {
  const DescriptionListviewHorizontal({super.key, required this.text});
     final String text;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.only(right: 22 , top: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: TextStyle(
            color: ColorApp.whiteColor,
            fontFamily: "Tajawal",
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
