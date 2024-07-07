import 'package:digitaltransactions/core/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff8160ef),
                Color(0xff5927ff),
              ])

        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                   topRight: Radius.circular(100)
                )
              ),
            ),
            SvgPicture.asset("assets/images/svg/bride.svg")
          ],
        ),
      ),
    );
  }
}
