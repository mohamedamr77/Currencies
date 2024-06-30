import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/title_drawar.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/text.dart';
import 'background_image_top_screen.dart';
import 'container_heigst_price.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

           SizedBox(
             height: MediaQuery.sizeOf(context).height*0.42,
             child: Stack(
               children: [
                 Container(
                   height: 230,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(ImageApp.appBarBGDashboardImage),
                       fit: BoxFit.fill,
                     ),
                   ),
                   child:const Column(
                     children: [
                       SafeArea(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 16, right: 22, top: 20),
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


          const Padding(
            padding: EdgeInsets.only(top: 25, right: 16, left: 16),
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

           ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>  Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
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
                    Spacer(flex: 2,),
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
              ),
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10,);
              },
              itemCount: 10
          ),
        ],
      ),
    );
  }
}
/*
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
 */

/*
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
 */