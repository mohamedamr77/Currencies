import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../../../../core/utils/image.dart';
import '../../../../../../core/utils/text.dart';
import '../../../../../ad_manager.dart';
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
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
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
        childCount: childCountList, // Adjusted to show 10 items + 2 ads
      ),
    );
  }
}
