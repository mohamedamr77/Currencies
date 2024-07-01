import 'package:digitaltransactions/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/image.dart';

class DetialsScreenBody extends StatelessWidget {
  const DetialsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
           height: 285,
          child: Stack(
            children: [
              Container(
                height: 185,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageApp.appBarBGDetailsImage),
                    fit: BoxFit.fill,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text("دولار أمريكى",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorApp.whiteColor,
                                  fontFamily: "Tajawal",
                                  fontSize:20,

                                ),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xfff5f6fa),
                          ),
                          CircleAvatar(
                            radius: 32,
                            child: Image(image: AssetImage("assets/images/amreica.png"),
                              fit: BoxFit.contain,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 10,),
                    Text("دولار أمريكى",
                    style: TextStyle(
                      color: Color(0xff444555),
                      fontFamily: "Tajawal",
                      fontSize:20,
                    ),
                    ),
                    Text("USD",
                    style: TextStyle(
                      color: Color(0xff9a9cb8),
                      fontFamily: "Tajawal",
                      fontSize:16,
                    ),
                    ),
                  ],
                )
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff7853f2),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/svg/calculator.svg",
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text("تحويل",
                      style: TextStyle(
                        color: Color(0xfff5f6fa)
                      ),
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/*
 Image(
                image:const AssetImage(ImageApp.appBarBGDetailsImage),
                fit: BoxFit.fitHeight,
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height*0.3,
              ),
 */

/*
 const Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 32,
                        child: Image(image: AssetImage("assets/images/amreica.png"),
                          fit: BoxFit.contain,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ]
                ),
              ),
 */