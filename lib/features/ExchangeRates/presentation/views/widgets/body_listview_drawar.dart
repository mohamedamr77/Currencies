import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/textstyle.dart';
import '../../../../Dashboard/presentation/model/list_drawer_item.dart';

class BodyListViewDrawer extends StatelessWidget {
  const BodyListViewDrawer({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (drawerList[index].title == drawerList[0].title) {
          //GoRouter.of(context).pushReplacement(AppRouter.kExchangeRates);
          GoRouter.of(context).push(AppRouter.kCalculatorPrice);
        } else if (drawerList[index].title == drawerList[2].title) {
          //GoldPricesScreen
          // GoRouter.of(context).push(AppRouter.kGoldPrices);
          GoRouter.of(context).push(AppRouter.kCalculatorGold);
        } else if (drawerList[index].title == drawerList[4].title) {
          // return const SliverPricesScreen();
          // GoRouter.of(context).push(AppRouter.kSliverPrices);
          GoRouter.of(context).push(AppRouter.kEconomicNews);
        } else if (drawerList[index].title == drawerList[5].title) {
          //return const EconomicNewsScreen();
          // GoRouter.of(context).push(AppRouter.kEconomicNews);
          GoRouter.of(context).push(AppRouter.kSetting);
        }  else if (drawerList[index].title == drawerList[3].title) {
          // return const GoldCalculatorScreen();
          // GoRouter.of(context).push(AppRouter.kCalculatorGold);
          GoRouter.of(context).push(AppRouter.kSliverPrices);
        } else if (drawerList[index].title == drawerList[1].title) {
          // return const CalculatorPriceScreen();
         // GoRouter.of(context).push(AppRouter.kCalculatorPrice);
          GoRouter.of(context).push(AppRouter.kGoldPrices);
        }
      },
      child: ListTile(
        trailing: SvgPicture.asset(
          drawerList[index].image,
          height: 20,
          width: 20,
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            drawerList[index].title,
            textAlign: TextAlign.right,
            style: CustomTextStyle(
              fontSize: 16.sp,
              fontFamily: "Tajawal",
              fontWeight: FontWeight.w400,
              color: const Color(0xff200e32),
            ),
          ),
        ),
      ),
    );
  }
}
