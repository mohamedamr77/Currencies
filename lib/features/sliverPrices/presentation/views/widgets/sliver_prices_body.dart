import 'package:digitaltransactions/core/shared_widget/custom_banner_prices_gold_sliver_currency.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import 'ListVerticalSliverSellingPricing.dart';
import 'list_horizontal_sliver_highest.dart';

class SliverPricesBody extends StatelessWidget {
  const SliverPricesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: CustomBannerPricesGoldSliverCurrency(
          titleScreen: "اسعار الفضة",
          descriptionListviewHorizontal: 'اسعار الأونصة عالميا',
          action: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )),
          listHorizontal: const ListHorizontalSliverHighest(),
        )),
        const SliverToBoxAdapter(
          child: ThreeTextDescriptionListViewVertical(
            text1: 'العيار',
            text2: 'شراء',
            text3: 'بيع',
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 10,
        )),
        const ListVerticalSliverSellingPricing(),
      ],
    );
  }
}
