import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';

class ButtonCalculator extends StatelessWidget {
  const ButtonCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return   Positioned(
        bottom: MediaQuery.sizeOf(context).height*0.065,
        left:  MediaQuery.sizeOf(context).width*0.04,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
          decoration: BoxDecoration(
              color: ColorApp.mediumSlatebBlueColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Row(
            children: [
              SvgPicture.asset(ImageApp.calculatorImage,
                color: ColorApp.whiteColor,
              ),
              const SizedBox(width: 10,),
              const Text(TextApp.translateText,
                style: TextStyle(
                  color: ColorApp.ghostWhiteColor,
                ),
              ),
            ],
          ),
        )
    );
  }
}
