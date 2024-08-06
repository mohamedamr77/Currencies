import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widget/custom_banner_prices_gold_sliver_currency.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import 'listvertical_widget/list_vertical_banks_selling_buying.dart';
import 'listview_horizontal_widget/list_horizontal_higest_prices.dart';

class ExchangeRatesBody extends StatefulWidget {
  const ExchangeRatesBody({super.key});

  @override
  State<ExchangeRatesBody> createState() => _ExchangeRatesBodyState();
}

class _ExchangeRatesBodyState extends State<ExchangeRatesBody> {

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
          child: ThreeTextDescriptionListViewVertical(
            text1: 'البنك',
            text2: 'شراء',
            text3: 'بيع',
          ),
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
