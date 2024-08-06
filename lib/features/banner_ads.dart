import 'package:digitaltransactions/features/ad_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAds extends StatefulWidget {
  const BannerAds({super.key});

  @override
  State<BannerAds> createState() => _BannerAdsState();
}

class _BannerAdsState extends State<BannerAds> {
  BannerAds? bannerAd;
  bool isLoading=false;
  void load(){
    bannerAd =(BannerAd(
        size: AdSize.banner,
        adUnitId: AdManager.bannerHome,
        listener: BannerAdListener(
          onAdLoaded: (ad){
            isLoading=true;
            setState(() {

            });
          },
          onAdFailedToLoad: (ad, error){
            ad.dispose();
          }
        ),
        request: AdRequest()
    ) ..load()) as BannerAds? ;
  }

  @override
  void initState(){
    load();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
