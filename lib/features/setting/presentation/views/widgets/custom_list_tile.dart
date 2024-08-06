import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/image.dart';


// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
        required this.trailingImage,
        required this.title,
        this.onTap});
  final String trailingImage;
  final String title;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: onTap,
        tileColor: Colors.white,
        leading: Image.asset(
          ImageApp.arrow,
          height: 15.h,
          width: 15.w,
        ),
        title: Text(title,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontFamily: "Tajawal",
            )),
        trailing: Image.asset(trailingImage, height: 30, width: 30),
      ),
    );
  }
}
