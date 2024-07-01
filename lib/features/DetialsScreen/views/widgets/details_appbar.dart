import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../../core/textstyle.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: MediaQuery.sizeOf(context).height*0.248,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageApp.appBarBGDetailsImage),
          fit: BoxFit.fill,
        ),
      ),
      child:  SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025,right: MediaQuery.of(context).size.width*0.07),
          child: const Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text("دولار أمريكى",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle(
                        color: ColorApp.whiteColor,
                        fontFamily: "Tajawal",
                        fontSize:20,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,
                    color: ColorApp.whiteColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
