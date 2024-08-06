import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/textstyle.dart';
import '../Dashboard/presentation/model/list_drawer_item.dart';
import '../ExchangeRates/presentation/views/screen.dart';
import '../calculatorGold/presentation/views/screen.dart';
import '../calculatorprice/presentation/views/screen.dart';
import '../economicnews/presentation/views/screen.dart';
import '../goldprices/presentation/views/screen.dart';
import '../setting/presentation/views/screen.dart';
import '../sliverPrices/screen.dart';

class BodyListViewDrawer extends StatelessWidget {
  const BodyListViewDrawer({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            if (drawerList[index].title == drawerList[0].title) {
              return const ExchangeRatesScreen();
            } else if (drawerList[index].title == drawerList[2].title) {
              return const GoldPricesScreen();
            } else if (drawerList[index].title == drawerList[4].title) {
              return const SliverPricesScreen();
            } else if (drawerList[index].title == drawerList[5].title) {
              return const EconomicNewsScreen();
            } else if (drawerList[index].title == drawerList[6].title) {
              return const SettingScreen();
            } else if (drawerList[index].title == drawerList[3].title) {
              return const GoldCalculatorScreen();
            } else if (drawerList[index].title == drawerList[1].title) {
              return const CalculatorPriceScreen();
            } else {
              return const SizedBox();
            }
          },
        ));
      },
      child: ListTile(
        trailing: SvgPicture.asset(
          drawerList[index].image,
          height: 40,
          width: 40,
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            drawerList[index].title,
            textAlign: TextAlign.right,
            style: const CustomTextStyle(
              fontSize: 20,
              fontFamily: "Tajawal",
              color: Color(0xff200e32),
            ),
          ),
        ),
      ),
    );
  }
}
