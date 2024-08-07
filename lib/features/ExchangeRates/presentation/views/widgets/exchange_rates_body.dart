import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widget/custom_banner_prices_gold_sliver_currency.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/three_Text_Bank_buying_selling.dart';
import '../../../../../core/utils/textstyle.dart';
import 'listvertical_widget/list_vertical_Banks_selling_buying.dart';
import 'listview_horizontal_widget/list_horizontal_higest_prices.dart';

class ExchangeRatesBody extends StatelessWidget {
  const ExchangeRatesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: CustomBannerPricesGoldSliverCurrency(
          titleScreen: "أسعار العملات",
          descriptionListviewHorizontal: "علي الأسعار تداول",
          action: GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: SizedBox(
              height: 60.h,
              width: 60.w,
              child:
                  const Image(image: AssetImage(ImageApp.actionDashboardImage)),
            ),
          ),
          listHorizontal: const ListHorizontalHigstPrices(),
        )),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, right: 26, left: 26),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("العمله",
                    textAlign: TextAlign.right,
                    style:  CustomTextStyle(
                      color: ColorApp.deebBlueTextColor,
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    )
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text("البيع",
                      textAlign: TextAlign.right,
                      style:  CustomTextStyle(
                        color: ColorApp.deebBlueTextColor,
                        fontFamily: "Tajawal",
                        fontSize: 16,
                      )
                  ),
                ),
              ],
            ),
          )
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 10,
        )),
        const ListVerticalBanksSellingBuying(),
      ],
    );
  }
}
