import 'package:digitaltransactions/core/shared_widget/custom_appbar.dart';
import 'package:digitaltransactions/core/shared_widget/three_Text_bank_buying_selling.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/description_listview_horizontal.dart';
import '../../../../../core/utils/text.dart';
import '../../../../ExchangeRates/presentation/views/widgets/listvertical_widget/item_listview_vertical_dashboard.dart';
import '../../../../ExchangeRates/presentation/views/widgets/listview_horizontal_widget/item_exchange_rates_horizontal.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
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
                  child: Column(
                    children: [
                      CustomAppbar(
                        text: TextApp.titleCenterDashboard,
                        action: IconButton(
                            onPressed: () {
                              GoRouter.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )),
                      ),
                      const DescriptionListviewHorizontal(
                        text: 'اسعار الأونصة عالميا',
                      ),
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
                          const ItemExchangeRatesListHorizontal(
                        imageCountry: ImageApp.americaImage,
                        imageBank: ImageApp.americaImage,
                        countryCurrency: TextApp.dollarText,
                        abbreviationCountry: "USD",
                        price: 48.8,
                        nameBank: TextApp.aboZabyText,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ThreeTextDescriptionListViewVertical(
            text1: 'البنك',
            text2: 'شراء',
            text3: 'بيع',
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  const ItemListviewVerticalDashboard(
                    widget: Image(
                      image: AssetImage(ImageApp.americaImage),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    sellingPrice: 48.36,
                    buyingPrice: 48.28,
                    nameWidget: TextApp.dollarText,
                  ),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 10)
        ],
      ),
    );
  }
}
