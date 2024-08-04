import 'package:flutter/material.dart';

import '../../../../core/image.dart';
import '../../../../core/shared_widget/custom_appbar.dart';
import '../../../../core/shared_widget/description_listview_horizontal.dart';
import '../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import '../../../../core/text.dart';
import '../../../ExchangeRates/views/widgets/listvertical_widget/item_listview_vertical_dashboard.dart';
import '../../../../core/shared_widget/dashboard/Item_goldandsliver_ListHorizontal.dart';

class SliverPricesBody extends StatelessWidget {
  const SliverPricesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.42,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.31,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageApp.appBarBGDashboardImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Column(
                    children: [
                      CustomAppbar(text: "اسعار الفضة"),
                      DescriptionListviewHorizontal(
                          text: 'اسعار الأونصة عالميا'),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 5,
                  left: 0.1, // Ensure the containers are centered horizontally
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.21,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          const ItemGoldAndSliverListHorizontal(
                        imageCountry: ImageApp.americaImage,
                        countryCurrency: TextApp.dollarText,
                        abbreviationCountry: "USD",
                        price: "2,330.28",
                        isGOld: false,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Column(
                children: [
                  ItemListviewVerticalDashboard(
                    widget: CircleAvatar(
                      backgroundColor: Color(0xffB0B0B0),
                      child: Text("925"),
                    ),
                    sellingPrice: 48.36,
                    buyingPrice: 48.28,
                    nameWidget: "فضة 925",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
