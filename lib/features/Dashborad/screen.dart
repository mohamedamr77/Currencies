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
              padding: const EdgeInsets.only(top: 25, right: 16, left: 16),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    "البنك",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff14172c),
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                  Spacer(flex: 2),
                  Text(
                    "شراء",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff14172c),
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                  Spacer(flex: 1),
                  Text(
                    "بيع",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff14172c),
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    textDirection: TextDirection.rtl,
                    children: [
                      CircleAvatar(
                        child: Image(
                          image: AssetImage("assets/images/amreica.png"),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                      SizedBox(width: 10),
                      CountryCurrency("دولار أمريكى "),
                    ],
                  ),
                  Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "48.48", // Replace with the actual buying price
                      style: TextStyle(
                        color: Color(0xff14172c),
                        fontFamily: "Tajawal",
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 62),
                    Text(
                      "48.50", // Replace with the actual selling price
                      style: TextStyle(
                        color: Color(0xff14172c),
                        fontFamily: "Tajawal",
                        fontSize: 16,
                      ),
                    ),
                  ],
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
