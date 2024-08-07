import 'dart:ffi';

import 'package:digitaltransactions/features/ExchangeRates/presentation/view_model/currency_price_model.dart';
import 'package:digitaltransactions/services/get_currency_prices.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/utils/image.dart';
import '../../../../../../core/utils/text.dart';
import '../../../../../ad_manager.dart';
import '../listview_horizontal_widget/item_exchange_rates_horizontal.dart';
import 'item_listview_vertical_dashboard.dart';

class ListVerticalBanksSellingBuying extends StatefulWidget {
  const ListVerticalBanksSellingBuying({super.key});

  @override
  State<ListVerticalBanksSellingBuying> createState() => _ListVerticalBanksSellingBuyingState();
}

class _ListVerticalBanksSellingBuyingState extends State<ListVerticalBanksSellingBuying> {

  final List<BannerAd> bannerAds = [];
  bool isLoading = false;
  int childCountList=11;

  void loadAds() {
    for (int i = 0; i < childCountList~/5; i++) {
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
    return FutureBuilder<List<CurrencyPriceModel>>(
      future: GetCurrencyPrices().getCurrencyPrices(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator(),)
        );
        }

        if (snapshot.connectionState == ConnectionState.done) {

          if (snapshot.hasError) {
            return SliverToBoxAdapter(child: Center(child: Text('Error: ${snapshot.error.toString()}')));
          }

          if (snapshot.hasData) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  var bank = snapshot.data![index];
                  if (index % 5 == 0&&index!=0) {
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
                         ItemListviewVerticalDashboard(
                          sellingPrice: double.parse(bank.sellingPrice),
                          buyingPrice: double.parse(bank.purchasingPrice),
                          nameWidget: bank.name,
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  } else {
                    return  Column(
                      children: [
                        ItemListviewVerticalDashboard(
                          sellingPrice: double.parse(bank.sellingPrice),
                          buyingPrice: double.parse(bank.purchasingPrice),
                          nameWidget: bank.name,
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  }
                },
                childCount: snapshot.data!.length, // Adjusted to show 10 items + 2 ads
              ),
            );
          }
        }

        return const SizedBox.shrink();
      },
    );
  }
}


/*
Padding(
                padding: const EdgeInsets.all(10.0),
                child: Shimmer.fromColors(
                    baseColor:      Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Row(
                      children: [
                        Container(
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Spacer(flex: 3,),
                        Container(
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Spacer(flex: 1,),
                        Container(
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Spacer(flex: 1,),
                      ],
                    ) ,
                ),
              )
 */