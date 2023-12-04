// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

import 'dart:convert';
import 'package:timezone/data/latest.dart' as tz;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loan_instant/screen/Benefits_Screen/Benefits.dart';
import 'package:loan_instant/screen/Create_Profile_Screen/Create_Profile_Screen.dart';
import 'package:loan_instant/screen/Documents_required/Documents_required.dart';
import 'package:loan_instant/screen/Emi_calculator/EMI_Type.dart';
import 'package:loan_instant/screen/Emi_calculator/Lorem_Ipsum.dart';
import 'package:loan_instant/screen/Emi_calculator/Your%20EMI.dart';
import 'package:loan_instant/screen/Feature_Screen/Feature.dart';
import 'package:loan_instant/screen/Fill_Up_Form/Fill_Up_Form1.dart';
import 'package:loan_instant/screen/Fill_Up_Form/Fill_Up_Form2.dart';
import 'package:loan_instant/screen/Fill_Up_Form/Fill_Up_Form3.dart';
import 'package:loan_instant/screen/Fill_Up_Form/Fill_Up_Form4.dart';
import 'package:loan_instant/screen/Fill_Up_Form/Fill_Up_Form5.dart';
import 'package:loan_instant/screen/Get_loan_online_screen/Get-loan-online-screen.dart';
import 'package:loan_instant/screen/How_Loan_work/Loan_work.dart';
import 'package:loan_instant/screen/Apply_for_loan_Screen/Apply_for_loan_Screen.dart';
import 'package:loan_instant/screen/Loan_Calculate_Screen/Loan_Calculate_Screen.dart';
import 'package:loan_instant/screen/Loan_Calculate_Screen/See_Loans_Screens.dart';
import 'package:loan_instant/screen/Loan_Requirements/Loan_Requirements.dart';
import 'package:loan_instant/screen/Loan_Summary_Screen/Approved_Loan_Screen.dart';
import 'package:loan_instant/screen/Loan_Summary_Screen/Loan_Summary_Screen.dart';
import 'package:loan_instant/screen/Loan_type/Loan_Details/Loan_Details.dart';
import 'package:loan_instant/screen/Loan_type/loan_type_first/loan_type.dart';
import 'package:loan_instant/screen/Select_Category/Select_Category.dart';
import 'package:loan_instant/screen/cradit_score/Cradit_Score1.dart';
import 'package:loan_instant/screen/cradit_score/Cradit_Score2.dart';
import 'package:loan_instant/screen/cradit_score/Cradit_Score3.dart';
import 'package:loan_instant/screen/cradit_score/Cradit_Score4.dart';
import 'package:loan_instant/screen/cradit_score/Credit_Score_Approved.dart';
import 'package:loan_instant/screen/insurance_screen/insurance1.dart';
import 'package:loan_instant/screen/insurance_screen/insurance2.dart';
import 'package:loan_instant/screen/insurance_screen/insurance3.dart';
import 'package:loan_instant/screen/insurance_screen/insurance4.dart';
import 'package:loan_instant/screen/insurance_screen/insurance_aproval.dart';
import 'package:loan_instant/splash_screen/splash.dart';

import 'Controller_Page/My_Controller.dart';
import 'Controller_Page/widget_controller/recomannded_best_deal.dart';
import 'in_app_web_view/ply_win.dart';
import 'in_app_web_view/view.dart';
import 'screen/Get_start/Get_Start.dart';

MyAppController myAppController = Get.put(MyAppController());

final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
RxMap LoanData = {}.obs;

Future initConfig() async {
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await remoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAd;

loadAd() {
  AppOpenAd.load(
    adUnitId: LoanData.value['AppOpen'],
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        appOpenAd = ad;
        // isLoaded=true;
        ad.show();
      },
      onAdFailedToLoad: (error) {},
    ),
  );
}

AndroidNotificationChannel channel = const AndroidNotificationChannel(
    "Hello ", "Rohan",
    playSound: true, importance: Importance.high);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  initConfig().whenComplete(() {
    LoanData.value = json.decode(remoteConfig.getString('ad'));
    loadAd();
  });

  return runApp(GetMaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Splash_Screen(),
      '/Get_Stard': (context) => Get_Stard(),
      '/Loan_Work': (context) => const Loan_Work(),
      '/Apply_for_loan_Screen': (context) => const Apply_for_loan_Screen(),
      '/In_App_Browser': (context) => const In_App_Browser(),
      '/Benefits': (context) => const Benefits(),
      '/Feature': (context) => const Feature(),
      '/Create_Profile': (context) => Create_Profile(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Select_Category': (context) => Select_Category(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Get_loan_online_screen': (context) => const Get_loan_online_screen(),
      '/Loan_type': (context) => const Loan_type(),
      '/Loan_Details': (context) => Loan_Details(),
      '/EMI_Type': (context) => const EMI_Type(),
      '/Lorem_Ipsum': (context) => const Lorem_Ipsum(),
      '/Your_EMI': (context) => const Your_EMI(),
      '/Loan_Requirements': (context) => const Loan_Requirements(),
      '/Documents_required': (context) => const Documents_required(),
      '/Loan_Calculate_Screen': (context) => Loan_Calculate_Screen(
            indexs: index,
          ),
      '/See_Loans_Screens': (context) => See_Loans_Screens(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Fill_Up_Form1': (context) => Fill_Up_Form1(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Fill_Up_Form2': (context) => Fill_Up_Form2(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Fill_Up_Form3': (context) => Fill_Up_Form3(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Fill_Up_Form4': (context) => Fill_Up_Form4(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Fill_Up_Form5': (context) => Fill_Up_Form5(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Loan_Summary_Screen': (context) => Loan_Summary_Screen(
            indexs: index,
            loanlist: Loan_List,
          ),
      '/Approved_Loan_Screen': (context) => const Approved_Loan_Screen(),
      '/Play_Win': (context) => const Play_Win(),
      '/Credit_Score1': (context) => const Credit_Score1(),
      '/Credit_Score2': (context) => const Credit_Score2(),
      '/Credit_Score3': (context) => const Credit_Score3(),
      '/Credit_Score4': (context) => const Credit_Score4(),
      '/Credit_Score_Approved': (context) => const Credit_Score_Approved(),
      '/insurance1': (context) => const insurance1(),
      '/insurance2': (context) => const insurance2(),
      '/insurance3': (context) => const insurance3(),
      '/insurance4': (context) => const insurance4(),
      '/insurance_Approved': (context) => const insurance_Approved(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
