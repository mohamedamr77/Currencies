import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:digitaltransactions/features/Dashborad/widgets/background_image_top_screen.dart';
import 'package:digitaltransactions/features/Dashborad/widgets/container_heigst_price.dart';
import 'package:digitaltransactions/features/Dashborad/widgets/title_drawar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.44,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const BackgroundImageTopScreen(),
                  const TitleAndDrawer(),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.16,
                    right: 25,
                    child: const Text(
                      TextAPP.highestTradingPrices,
                      style: TextStyle(
                        color: ColorApp.whiteColor,
                        fontFamily: "Tajawal",
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,right: 16,left: 16),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("البنك",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff14172c),
                    fontFamily: "Tajawal",
                    fontSize: 16,
                  ),
                  ),
                  Text("شراء",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff14172c),
                    fontFamily: "Tajawal",
                    fontSize: 16,
                  ),
                  ),
                  Text("بيع",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff14172c),
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
