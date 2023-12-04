// ignore_for_file: invalid_use_of_protected_member

import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Media_qury/Media_qury.dart';
import '../main.dart';

final native = Get.put(NativeAds());
final banner = Get.put(BannerAds());

void initState() {
  FacebookAudienceNetwork.init();
}

class NativeAds extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Widget getNT(String name, String Factoryid) {
    late NativeAd nativeAd;
    var isLoaded = false.obs;
    if (LoanData.value[name]["Native_Ad_type"] == "Admob") {
      nativeAd = NativeAd(
        request: const AdManagerAdRequest(),
        adUnitId: LoanData.value[name]["Native_Admob"],
        listener: NativeAdListener(onAdLoaded: (ad) {
          nativeAd.load();
          isLoaded.value = true;
          print("Banner ad Loaded");
        }, onAdFailedToLoad: (ad, error) {
          print("Banner ad Failed to Load");
        }),
        // factoryId: 'listTileMedium',
        factoryId: Factoryid,
      );
      nativeAd.load();
    }

    return LoanData.value[name]["Native_Ad_type"] == "Admob"
        ? Obx(() => isLoaded.value
            ? Factoryid == "listTile"
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: Stack(
                      children: [
                        Container(
                          height: ScreenSize.pSize_150(),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: AdWidget(
                            ad: nativeAd,
                          ),
                          // color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(12),
                    child: Stack(
                      children: [
                        Container(
                          width: ScreenSize.pSize_340(),
                          height: ScreenSize.pSize_250(),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: AdWidget(
                            ad: nativeAd,
                          ),
                          // color: Colors.blue,
                        ),
                      ],
                    ),
                  )
            : Factoryid == "listTileMedium"
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: ScreenSize.pSize_340(),
                      height: ScreenSize.pSize_250(),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: ScreenSize.pSize_340(),
                      height: ScreenSize.pSize_150(),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ))
        : LoanData.value[name]["Native_Ad_type"] == "Fb"
            ? Container(
                width: ScreenSize.pSize_350(),
                height: ScreenSize.pSize_250(),
                child: Container(
                  width: ScreenSize.pSize_350(),
                  height: ScreenSize.pSize_250(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: FacebookNativeAd(
                    placementId: LoanData.value["Native_FB"],
                    adType: NativeAdType.NATIVE_AD,
                    width: ScreenSize.pSize_350(),
                    height: ScreenSize.pSize_250(),
                    backgroundColor: Colors.white,
                    titleColor: Colors.black,
                    descriptionColor: Colors.grey,
                    buttonColor: Color(0xFFD88DFA),
                    buttonTitleColor: Colors.black,
                    buttonBorderColor: Color(0xFFD88DFA),
                    listener: (result, value) {
                      print("Native Ad: $result --> $value");
                    },
                    keepExpandedWhileLoading: true,
                    expandAnimationDuraion: 1000,
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  _launchURL(LoanData.value[name]["Url"]);
                },
                child: Stack(
                  children: [
                    Container(
                      width: ScreenSize.pSize_340(),
                      height: ScreenSize.pSize_250(),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                NetworkImage(LoanData.value[name]["Image_Url"]),
                            fit: BoxFit.fill),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF26A4FB),
                            borderRadius: BorderRadius.circular(5)),
                        height: ScreenSize.pSize_15(),
                        width: ScreenSize.pSize_25(),
                        child: Center(
                          child: Text('Ad',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenSize.pSize_10())),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}

//======================================FACEBOOK BANNER===================================================

class BannerAds extends GetxController {
  BannerAd? bannerAd;
  var bannerLoaded = false.obs;

  Widget getBN(String name) {
    bannerAd = BannerAd(
      size: AdSize.fluid,
      adUnitId: LoanData.value[name]["Banner_Admob"],
      listener: BannerAdListener(
          onAdLoaded: (ad) {
            bannerAd!.load();
            bannerLoaded.value = true;
            print("Banner ad Loaded");
          },
          onAdFailedToLoad: (ad, error) {}),
      request: const AdRequest(),
    );
    bannerAd!.load();
    // bannerLoaded.value = true;

    return LoanData.value[name]["Banner_Ad_type"] == "Admob"
        ? Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 50,
              child: AdWidget(
                ad: bannerAd!,
              ),
            ),
          )
        : Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              child: FacebookBannerAd(
                placementId: LoanData.value["Banner_FB"],
                bannerSize: BannerSize.STANDARD,
                listener: (result, value) {},
              ),
            ),
          );
  }
}
