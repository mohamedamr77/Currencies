import 'package:digitaltransactions/core/utils/textstyle.dart';
import 'package:flutter/material.dart';
import '../utils/color.dart';

class CustomAppbar extends StatelessWidget {
   const CustomAppbar({super.key, required this.text, required this.action,});
   final Widget action;
    final String  text;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 10, top: 5),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: const CustomTextStyle(
                    color: ColorApp.whiteColor,
                    fontFamily: "Tajawal",
                    fontSize: 16,
                    fontWeight: null,
                    fontStyle: null,
                  )
              ),
            ),
            action,
          ],
        ),
    ),
    );
  }
}
// Image(image: AssetImage(ImageApp.actionDashboardImage),),

/*
GestureDetector(
              onTap: (){
                Scaffold.of(context).openEndDrawer();
              },
              child: const SizedBox(
                height: 60,
                width: 60,
                child: Image(image: AssetImage(ImageApp.actionDashboardImage)),
            ),
            ),
 */