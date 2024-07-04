import 'package:digitaltransactions/features/Dashboard/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/textstyle.dart';
import '../../../../DetialsScreen/screen.dart';
import '../../../model/list_drawer_item.dart';

class BodyListViewDrawer extends StatelessWidget {
  const BodyListViewDrawer({super.key, required this.index});
   final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          if(drawerList[index].title==drawerList[0].title
              ||
              drawerList[index].title==drawerList[2].title
              ||
              drawerList[index].title==drawerList[4].title
          ){
            return const DetailsScreen();
          }else{
            return const DashboardScreen();
          }
        },
        )
        );
      },
      child: ListTile(
        trailing: SvgPicture.asset(drawerList[index].image,
          height: 40,
          width:40,
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(drawerList[index].title,
            textAlign: TextAlign.right,
            style: const CustomTextStyle(
              fontSize: 20,
              fontFamily: "Tajawal",
              color: Color(0xff200e32),
            ),
          ),
        ),
      ),
    );
  }
}
