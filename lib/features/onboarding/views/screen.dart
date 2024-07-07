import 'package:animate_do/animate_do.dart';
import 'package:digitaltransactions/features/Dashboard/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../ExchangeRates/views/screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
        seconds: 2
    ), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
        return   ExchangeRatesScreen();
      } ));

    }  ) ;
  }
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
      ZoomIn(
        child: SvgPicture.asset(
          "assets/images/svg/bride.svg",
          width: MediaQuery.of(context).size.width * 0.3,
        ),
      ),
          ],
        ),
      ),
    );
  }
}