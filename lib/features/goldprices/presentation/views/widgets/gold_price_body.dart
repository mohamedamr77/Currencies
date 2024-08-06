import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/custom_appbar.dart';
import '../../../../../core/shared_widget/dashboard/Item_goldandsliver_ListHorizontal.dart';
import '../../../../../core/shared_widget/description_listview_horizontal.dart';
import '../../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import '../../../../../core/utils/text.dart';
import '../../../../ExchangeRates/presentation/views/widgets/listvertical_widget/item_listview_vertical_dashboard.dart';

class GoldPriceBody extends StatelessWidget {
  const GoldPriceBody({super.key});

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
                  child:  Column(
                    children: [
                      CustomAppbar(text: "أاسعار الذهب",

                        action: IconButton(onPressed: (){GoRouter.of(context).pop();}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,)),),
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
                        isGOld: true,
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
                      backgroundColor: Color(0xffE3AC2A),
                      child: Text("18"),
                    ),
                    sellingPrice: 48.36,
                    buyingPrice: 48.28,
                    nameWidget: "عيار 18",
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
