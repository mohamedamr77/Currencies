import 'package:flutter/material.dart';
import '../utils/image.dart';
import 'custom_appbar.dart';
import 'description_listview_horizontal.dart';

class CustomBannerPricesGoldSliverCurrency extends StatelessWidget {
  const CustomBannerPricesGoldSliverCurrency({super.key, required this.titleScreen, required this.descriptionListviewHorizontal, required this.action, required this.listHorizontal});
   final String titleScreen;
   final String descriptionListviewHorizontal;
   final Widget action;
   final Widget listHorizontal;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  text: titleScreen,
                  action: action,
                ),
                 DescriptionListviewHorizontal(
                    text: descriptionListviewHorizontal),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            left: 0.1, // Ensure the containers are centered horizontally
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.21,
              child: listHorizontal,
            ),
          ),
        ],
      ),
    );
  }
}
/*
ListView.separated(
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
                separatorBuilder: (context, index) =>
                const SizedBox(width: 10),
                itemCount: 10,
              ),
 */
/*
text: "أسعار العملات",
 */

/*
GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Image(
                          image:
                          AssetImage(ImageApp.actionDashboardImage)
                      ),
                    ),
                  ),
 */

/*
 text: 'اعلي الأسعار تداول'
 */