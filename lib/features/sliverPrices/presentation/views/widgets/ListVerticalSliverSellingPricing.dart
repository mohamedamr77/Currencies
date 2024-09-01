import 'package:digitaltransactions/features/goldprices/presentation/views/widgets/item_list_vertical_gold_sliver.dart';
import 'package:digitaltransactions/services/get_silver_price.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../../core/gold_price_model.dart';
import '../../../../ad_manager.dart';

class ListVerticalSliverSellingPricing extends StatefulWidget {
  const ListVerticalSliverSellingPricing({super.key});

  @override
  State<ListVerticalSliverSellingPricing> createState() => _ListVerticalSliverSellingPricingState();
}

class _ListVerticalSliverSellingPricingState extends State<ListVerticalSliverSellingPricing> {


  final List<BannerAd> bannerAds = [];
  bool isLoading = false;
  int childCountList = 11;

  void loadAds() {
    for (int i = 0; i < childCountList ~/ 5; i++) {
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
    return FutureBuilder<List<GoldAndSliverModel>>(

      future: GetSliverPrice().getSliverPrice(),

      builder: (context, snapshot) {

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ));
        }

        if (snapshot.connectionState == ConnectionState.done) {

          if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child:
                Center(child: Text('Error: ${snapshot.error.toString()}')));
          }

          if (snapshot.hasData) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  var  goldPrices= snapshot.data![index];
                  if (index % 5 == 0 && index != 0) {
                    // Insert an ad after every 5 items
                    return Column(
                      children: [
                        if (isLoading && index ~/ 6 < bannerAds.length)
                          Container(
                            alignment: Alignment.center,
                            width: bannerAds[index ~/ 6].size.width.toDouble(),
                            height:
                            bannerAds[index ~/ 6].size.height.toDouble(),
                            //you must every ad contain new bannerads
                            child: AdWidget(ad: bannerAds[index ~/ 6]),
                          ),
                        const SizedBox(height: 10),
                        ItemListVerticalGoldSliver(
                          id: goldPrices.id,
                          sellingPrice: goldPrices.sellingPrice.toString(),
                          nameWidget: goldPrices.name,
                          image: goldPrices.icon,
                          buyingPrice: goldPrices.purchasingPrice.toString(),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  }  else {
                    return  Column(
                      children: [
                        ItemListVerticalGoldSliver(
                          id: goldPrices.id,
                          sellingPrice: goldPrices.sellingPrice.toString(),
                          nameWidget: goldPrices.name,
                          image: goldPrices.icon,
                          buyingPrice: goldPrices.purchasingPrice,
                        ),

                        const SizedBox(height: 10),
                      ],
                    );
                  }
                },
                childCount:
                snapshot.data!.length, // Adjusted to show 10 items + 2 ads
              ),
            );
          }
        }

        return const SizedBox.shrink();
      },
    );
  }
}
