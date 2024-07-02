import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:digitaltransactions/core/textstyle.dart';
import 'package:digitaltransactions/features/Dashboard/model/list_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'body_listview_drawar.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(
      BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  ImageApp.appBarBGDetailsImage,
                ),
              fit: BoxFit.fill
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageApp.brideDrawerImage),
              SizedBox(height: 10),
              Text(TextApp.nameAppText,
              style: CustomTextStyle(
                fontSize: 20,
                fontFamily: "Tajawal",
                color: Colors.white,
              ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => BodyListViewDrawer(index: index,),
         itemCount: drawerList.length,
        )
      ],
    );
  }
}
/*
LinearGradient(
              colors: [
                Color(0xff8160ef),
                Color(0xff3a00fa),

              ],
            ),
 */