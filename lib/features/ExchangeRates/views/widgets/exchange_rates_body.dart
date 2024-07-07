import 'package:flutter/material.dart';

import '../../../../core/image.dart';
import '../../../../core/shared_widget/custom_appbar.dart';
import '../../../../core/text.dart';
import '../../../Dashboard/views/widgets/description_listview_horizontal.dart';
import 'listview_horizontal_widget/item_exchange_rates_horizontal.dart';

class ExchangeRatesBody extends StatelessWidget {
  const ExchangeRatesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height*0.42,
          child: Stack (
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height*0.31,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageApp.appBarBGDashboardImage),
                    fit: BoxFit.fill,
                  ),
                ),

                child: const Column(
                  children: [

                    CustomAppbar(text: "أسعار العملات",),

                    DescriptionListviewHorizontal(text: 'اعلي الأسعار تداول',),

                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 5,
                left: 0.1, // Ensure the containers are centered horizontally
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height*0.21,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>     const ItemExchangeRatesListHorizontal(
                      imageCountry: ImageApp.americaImage,
                      imageBank: ImageApp.americaImage,
                      countryCurrency: TextApp.dollarText,
                      abbreviationCountry: "USD",
                      price:48.8 ,
                      nameBank: TextApp.aboZabyText,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(width: 10,),
                    itemCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],

    );
  }
}
