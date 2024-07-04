import 'package:digitaltransactions/core/textstyle.dart';
import 'package:flutter/material.dart';
import '../../../../core/color.dart';

class CustomAppbar extends StatelessWidget {
   const CustomAppbar({super.key, required this.text, required this.action});
    final String  text;
    final Widget  action;
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
            GestureDetector(
              onTap: (){
                Scaffold.of(context).openEndDrawer();
              },
              child: SizedBox(
                height: 60,
                width: 60,
                child: action,
            ),
            ),
          ],
        ),
    ),
    );
  }
}
// Image(image: AssetImage(ImageApp.actionDashboardImage),),