import 'dart:async';

import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../main.dart';

class GetNative {
  Future<dynamic> getData() {
    NativeAd? ads;
    final completer = Completer();
    ads = NativeAd(
      // adUnitId: ConfigData.value["Native_ADMOB"],
      adUnitId: "/6499/example/native",
      factoryId: "listTileMedium",
      request: const AdManagerAdRequest(),
      listener: NativeAdListener(
          onAdLoaded: (ad) {
            completer.complete(ads);
          },
          onAdFailedToLoad: (ad, error) {}),
    )..load();
    return completer.future;
  }
}

class GetBanner {
  Future<dynamic> getData() {
    BannerAd? ads;
    final completer = Completer();
    ads = BannerAd(
      size: AdSize.banner,
      adUnitId: LoanData.value["Banner_ADMOB"],
      // adUnitId: "/6499/example/banner",
      request: AdManagerAdRequest(),
      listener: BannerAdListener(
          onAdLoaded: (ad) {
            completer.complete(ads);
          },
          onAdFailedToLoad: (ad, error) {}),
    )..load();
    return completer.future;
  }
}
