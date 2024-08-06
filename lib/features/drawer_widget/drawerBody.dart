import 'package:digitaltransactions/core/utils/image.dart';
import 'package:digitaltransactions/core/utils/text.dart';
import 'package:digitaltransactions/core/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Dashboard/presentation/model/list_drawer_item.dart';
import 'body_listview_drawar.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
           padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ImageApp.appBarBGDetailsImage,
                  ),
                  fit: BoxFit.fill)),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(ImageApp.brideDrawerImage),
                const SizedBox(height: 10),
                 Text(
                  TextApp.nameAppText,
                  style: CustomTextStyle(
                    fontSize: 20.sp,
                    fontFamily: "Tajawal",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => BodyListViewDrawer(
            index: index,
          ),
          itemCount: drawerList.length,
        ),
      ],
    );
  }
}
