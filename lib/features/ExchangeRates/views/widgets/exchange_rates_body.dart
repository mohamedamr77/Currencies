import 'package:digitaltransactions/features/banner_ads.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../../core/image.dart';
import '../../../../core/shared_widget/custom_appbar.dart';
import '../../../../core/shared_widget/three_Text_bank_buying_selling.dart';
import '../../../../core/text.dart';
import '../../../../core/shared_widget/description_listview_horizontal.dart';
import '../../../ad_manager.dart';
import 'listvertical_widget/item_listview_vertical_dashboard.dart';
import 'listview_horizontal_widget/item_exchange_rates_horizontal.dart';

class ExchangeRatesBody extends StatefulWidget {
  const ExchangeRatesBody({super.key});

  @override
  State<ExchangeRatesBody> createState() => _ExchangeRatesBodyState();
}

class _ExchangeRatesBodyState extends State<ExchangeRatesBody> {
  BannerAd? bannerAd;
  bool isLoading = false;

  void load() {
    bannerAd = BannerAd(
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
  }

  @override
  void initState() {
    load();
    super.initState();
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
                  child: const Column(
                    children: [
                      CustomAppbar(text: "أسعار العملات"),
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

              if (index % 5 == 0&&index!=0) {
                // Insert an ad after every 5 items
                return Column(
                  children: [
                    if (isLoading)
                      Container(
                        alignment: Alignment.center,
                        child: AdWidget(ad: bannerAd!),
                        width: bannerAd!.size.width.toDouble(),
                        height: bannerAd!.size.height.toDouble(),
                      ),
                    const SizedBox(height: 10),
                    ItemListviewVerticalDashboard(
                      widget: const Image(
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
                return Column(
                  children: [
                    ItemListviewVerticalDashboard(
                      widget: const Image(
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
              }
            },
            childCount: 12, // Adjusted to show 10 items + 2 ads
          ),
        ),
      ],
    );
  }
}
