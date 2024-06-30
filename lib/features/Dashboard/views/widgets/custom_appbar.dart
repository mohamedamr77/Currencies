import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';
import 'container_heigst_price.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: MediaQuery.sizeOf(context).height*0.42,
        child: Stack(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageApp.appBarBGDashboardImage),
                  fit: BoxFit.fill,
                ),
              ),
              child:const Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 22, top: 20),
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
                          Image(image: AssetImage(ImageApp.actionDashboardImage),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 22,top: 35),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        TextAPP.highestTradingPrices,
                        style: TextStyle(
                          color: ColorApp.whiteColor,
                          fontFamily: "Tajawal",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 5,
              left: 0.1, // Ensure the containers are centered horizontally
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomContainerHighestTradingPrices(),
                    SizedBox(width: 10),
                    CustomContainerHighestTradingPrices(),
                    SizedBox(width: 10),
                    CustomContainerHighestTradingPrices(),
                    SizedBox(width: 10),
                    CustomContainerHighestTradingPrices(),
                    SizedBox(width: 10),
                    CustomContainerHighestTradingPrices(),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}
