import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';


class TitleAndDrawer extends StatelessWidget {
  const TitleAndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(TextAPP.titleCenterDashboard,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorApp.whiteColor,
                  fontFamily: "Tajawal",
                  fontSize: 16,
                ),
              ),
            ),
            Image(image: AssetImage(ImageApp.actionDashboardImage)),
          ],
        ),
      ),
    );
  }
}
