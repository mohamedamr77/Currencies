import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';
import '../../../../core/textstyle.dart';
import '../../model/list_drawer_item.dart';

class BodyListViewDrawer extends StatelessWidget {
  const BodyListViewDrawer({super.key, required this.index});
   final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: SvgPicture.asset(drawerList[index].image,
        height: 40,
        width:40,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(drawerList[index].title,
          textAlign: TextAlign.right,
          style: CustomTextStyle(
            fontSize: 20,
            fontFamily: "Tajawal",
            color: Color(0xff200e32),
          ),
        ),
      ),
    );
  }
}
