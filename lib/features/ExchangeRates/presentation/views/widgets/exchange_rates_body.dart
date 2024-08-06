import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/shared_widget/custom_appbar.dart';
import '../../../../../core/shared_widget/description_listview_horizontal.dart';
import '../../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import '../../../../../core/utils/text.dart';
import '../../../../ad_manager.dart';
import 'listvertical_widget/item_listview_vertical_dashboard.dart';
import 'listview_horizontal_widget/item_exchange_rates_horizontal.dart';

class ExchangeRatesBody extends StatefulWidget {
  const ExchangeRatesBody({super.key});

  @override
  State<ExchangeRatesBody> createState() => _ExchangeRatesBodyState();
}

class _ExchangeRatesBodyState extends State<ExchangeRatesBody> {
  final List<BannerAd> bannerAds = [];
  bool isLoading = false;

  void loadAds() {
    for (int i = 0; i < 2; i++) {
      BannerAd bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdManager.bannerHome,
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              isLoading = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
          },
        ),
        request: const AdRequest(),
      )..load();

      bannerAds.add(bannerAd);
    }
  }

  @override
  void initState() {
    loadAds();
    super.initState();
  }

  @override
  void dispose() {
    for (BannerAd bannerAd in bannerAds) {
      bannerAd.dispose();
    }
    super.dispose();
  }

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
                      CustomAppbar(text: "أسعار العملات", action: GestureDetector(
                        onTap: (){
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: const SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(image: AssetImage(ImageApp.actionDashboardImage)),
                        ),
                      ),),
                      DescriptionListviewHorizontal(text: 'اعلي الأسعار تداول'),
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
            text1: 'البنك',
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
              // Calculate the actual item index
              int actualIndex = index - (index ~/ 6);

              if (index % 6 == 5) {
                // Insert an ad after every 5 items
                return Column(
                  children: [
                    if (isLoading && index ~/ 6 < bannerAds.length)
                      Container(
                        alignment: Alignment.center,
                        width: bannerAds[index ~/ 6].size.width.toDouble(),
                        height: bannerAds[index ~/ 6].size.height.toDouble(),
                        //you must every ad contain new bannerads
                        child: AdWidget(ad: bannerAds[index ~/ 6]),
                      ),
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
                  ],
                );
              } else {
                return const Column(
                  children: [
                    ItemListviewVerticalDashboard(
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
                    SizedBox(height: 10),
                  ],
                );
              }
            },
            childCount: 20, // Adjusted to show 10 items + 2 ads
          ),
        ),
      ],
    );
  }
}
