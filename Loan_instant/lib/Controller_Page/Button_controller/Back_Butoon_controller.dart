// ignore_for_file: avoid_print, invalid_use_of_protected_member, use_build_context_synchronously, camel_case_types, non_constant_identifier_names, sized_box_for_whitespace

import 'dart:developer';

import 'package:facebook_audience_network/ad/ad_interstitial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Media_qury/Media_qury.dart';
import '../../main.dart';

// final AddButton addButton = Get.put(AddButton());
bool isInterstitialAdLoaded = false;

final BackButtonController backbuttoncontroller =
    Get.put(BackButtonController());
final bbcounter demo = Get.put(bbcounter());

class BackButtonController extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Rx Backbuttoncounter = 1.obs;

  showBackbuttonad(BuildContext context, String name, transition) async {
    if (LoanData.value["BackCounter"] == Backbuttoncounter.value) {
      print(LoanData.value[name]["interstitial_Ad_type"]);
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () {
                return Future.value(true);
              },
              child: Center(
                child: AlertDialog(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: ScreenSize.pSize_34(),
                          width: ScreenSize.pSize_34(),
                          child: CircularProgressIndicator()),
                      Text("Ad is loading...",
                          style: TextStyle(fontSize: ScreenSize.pSize_18())),
                    ],
                  ),
                ),
              ));
        },
      );
      if (LoanData.value[name]["interstitial_Ad_type"] == 'Admob') {
        InterstitialAd.load(
          adUnitId: LoanData.value[name]["interstitial_Admob"],
          // adUnitId: "/6499/example/interstitial",
          request: const AdManagerAdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            ad.show();
            Navigator.pop(context);
            Navigator.pop(context);
            // page != 'stop' ? Navigator.pop(context) : null;
            Backbuttoncounter.value = 1;
          }, onAdFailedToLoad: (error) {
            InterstitialAd.load(
              adUnitId: LoanData.value["Interstitial"],
              // adUnitId: "/6499/example/interstitial",
              request: const AdManagerAdRequest(),
              adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
                ad.show();
                Navigator.pop(context);
                // page != 'stop' ? Navigator.pop(context)  : null;
                Backbuttoncounter.value = 1;
              }, onAdFailedToLoad: (error) {
                Navigator.pop(context);
                Navigator.pop(context);
                // page != 'stop' ? Navigator.pop(context)  : null;
                Backbuttoncounter.value = 1;
              }),
            );
          }),
        );
      }

      if (LoanData.value[name]["interstitial_Ad_type"] == 'fb') {
        print("ads loading");
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: LoanData.value["Interstitial_FB"],
          listener: (result, value) async {
            log('Ad Load');
            if (result == InterstitialAdResult.LOADED) {
              await FacebookInterstitialAd.showInterstitialAd();
              Navigator.pop(context);
              Navigator.pop(context);
              // page != 'stop' ? Navigator.pop(context) : null;
              Backbuttoncounter.value = 1;
            }
            if (result == InterstitialAdResult.ERROR) {
              Navigator.pop(context);
              Navigator.pop(context);
              // page != 'stop' ? Navigator.pop(context)  : null;
              Backbuttoncounter.value = 1;
            }
          },
        );
      }
      if (LoanData.value[name]["interstitial_Ad_type"] == "url") {
        // log("Loading");
        _launchURL(LoanData.value[name]["Url"]);
        Future.delayed(
          const Duration(seconds: 2),
          () {
            Navigator.pop(context);
            Navigator.pop(context);
            // page != 'stop' ?Navigator.pop(context)  : null;
            Backbuttoncounter.value = 1;
          },
        );
      }
    } else {
      Navigator.pop(context);

      // page != 'stop' ? Navigator.pop(context)  : null;
      Backbuttoncounter.value++;
    }
  }
}

class bbcounter extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Rx Backbuttoncounter = 1.obs;

  showBackbuttonad(
      BuildContext context, String page, String name, transition) async {
    if (LoanData.value["BackCounter"] == Backbuttoncounter.value) {
      print(LoanData.value[name]["interstitial_Ad_type"]);
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(true);
            },
            child: Center(
              child: CollectionSlideTransition(children: [
                Image(
                    height: ScreenSize.pSize_30(),
                    image: AssetImage('asset/image/loan/Logo/logo.png')),
                Image(
                    height: ScreenSize.pSize_30(),
                    image: AssetImage('asset/image/loan/Logo/logo.png')),
              ]),
              // AlertDialog(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //
              //
              //       // Container(
              //       //     height: ScreenSize.pSize_34(),
              //       //     width: ScreenSize.pSize_34(),
              //       //     child: CircularProgressIndicator()),
              //       // Text("Ad is loading...",
              //       //     style: TextStyle(fontSize: ScreenSize.pSize_18())),
              //     ],
              //   ),
              // ),
            ),
          );
        },
      );
      if (LoanData.value[name]["interstitial_Ad_type"] == 'Admob') {
        InterstitialAd.load(
          adUnitId: LoanData.value[name]["interstitial_Admob"],
          // adUnitId: "/6499/example/interstitial",
          request: const AdManagerAdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            ad.show();
            Navigator.pop(context);
            // Navigator.pop(context);
            page != 'stop' ? Get.toNamed(name, arguments: page) : null;
            Backbuttoncounter.value = 1;
          }, onAdFailedToLoad: (error) {
            InterstitialAd.load(
              adUnitId: LoanData.value["Interstitial"],
              // adUnitId: "/6499/example/interstitial",
              request: const AdManagerAdRequest(),
              adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
                ad.show();
                Navigator.pop(context);
                // Navigator.pop(context);
                page != 'stop' ? Get.toNamed(name, arguments: page) : null;
                Backbuttoncounter.value = 1;
              }, onAdFailedToLoad: (error) {
                Navigator.pop(context);
                // Navigator.pop(context);
                page != 'stop' ? Get.toNamed(name, arguments: page) : null;
                Backbuttoncounter.value = 1;
              }),
            );
          }),
        );
      }

      if (LoanData.value[name]["interstitial_Ad_type"] == 'Fb') {
        print("ads loading");
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: LoanData.value["Interstitial_FB"],
          listener: (result, value) async {
            log('Ad Load');
            if (result == InterstitialAdResult.LOADED) {
              await FacebookInterstitialAd.showInterstitialAd();
              Navigator.pop(context);
              // Navigator.pop(context);
              page != 'stop' ? Get.toNamed(name, arguments: page) : null;

              Backbuttoncounter.value = 1;
            }
            if (result == InterstitialAdResult.ERROR) {
              Navigator.pop(context);
              Navigator.pop(context);
              // page != 'stop' ? Navigator.pop(context)  : null;
              Backbuttoncounter.value = 1;
            }
          },
        );
      }
      if (LoanData.value[name]["interstitial_Ad_type"] == "Url") {
        // log("Loading");
        _launchURL(LoanData.value[name]["Url"]);
        Future.delayed(
          const Duration(seconds: 2),
          () {
            Navigator.pop(context);
            // Navigator.pop(context);
            page != 'stop' ? Get.toNamed(name, arguments: page) : null;

            // page != 'stop' ?Navigator.pop(context)  : null;
            Backbuttoncounter.value = 1;
          },
        );
      }
    } else {
      // Navigator.pop(context);
      page != 'stop' ? Get.toNamed(name, arguments: page) : null;

      // page != 'stop' ? Navigator.pop(context)  : null;
      Backbuttoncounter.value++;
    }
  }
}
