import 'package:digitaltransactions/features/Dashboard/views/widgets/custom_appbar.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/three_Text_bank_buying_selling.dart';
import 'package:flutter/material.dart';
import 'listview_vertical.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [

          CustomAppbar(),

          BankBuyingSelling(),

          ListviewVertical(),
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