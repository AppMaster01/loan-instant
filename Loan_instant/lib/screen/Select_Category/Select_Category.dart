// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/drawer_controller/drawer.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';
import 'package:loan_instant/screen/Loan_type/Loan_Details/model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../Controller_Page/small_container/container.dart';
import '../../Controller_Page/widget_controller/recomannded_best_deal.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Select_Category extends StatefulWidget {
  final List<Loan> loanlist;
  int indexs;

  Select_Category({Key? key, required this.indexs, required this.loanlist})
      : super(key: key);

  @override
  State<Select_Category> createState() => _Select_CategoryState();
}

class _Select_CategoryState extends State<Select_Category> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        controller.showbuttonad(context, '/Create_Profile', '/Select_Category',
            transition, index, '');
        // backbuttoncontroller.showBackbuttonad(
        //     context, '/Create_Profile', transition);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        drawer: Drawer(
            backgroundColor: const Color(0xFFF3F3F3),
            child: controllerdrawer.getelevated(
                context,
                'asset/image/loan/Logo/logo.png',
                'Instant Cash Loan',
                'Get loan in oneday !!')),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
          elevation: 0,
          leading: Builder(builder: (context) {
            return Center(
                child: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Image(
                      height: ScreenSize.pSize_23(),
                      image: const AssetImage(
                          'asset/image/loan/Icons/menu-icon (1).png')),
                ));
          }
          ),
          title: Text('Select Category',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, color: Colors.black)),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenSize.pSize_20(),
                  ),
//=================================================================================================  Get Loan Online
                  controllcontainersmall.getsmall(
                        () {
                      // Get.to(() => Get_loan_online_screen());
                      controller.showbuttonad(
                          context,
                          '/Get_loan_online_screen',
                          '/Select_Category',
                          transition,
                          widget.indexs,
                          Loan_List);
                    },
                    const Color(0xFFFFFBEB),
                    'asset/image/loan/Icons/select-category-screen-icon/getloan-icon.png',
                    'Get Loan Online',
                    'Online loan with minimum documents and less approval time',
                    'Apply',
                    const Color(0xFFF4C400),
                  ),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
// /=====================================================================================================Loan Type
                  controllcontainersmall.getsmall(
                        () {
                      // Get.to(() => Loan_type());
                      controller.showbuttonad(
                          context,
                          '/Loan_type',
                          '/Select_Category',
                          transition,
                          '',
                          DetailList[index]);
                    },
                    const Color(0xFFFFEDED),
                    'asset/image/loan/Icons/select-category-screen-icon/loantype-icon.png',
                    'Loan Type',
                    'Check type of loan and get more information about loan',
                    'Apply',
                    const Color(0xFFDA3030),
                  ),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  // /=====================================================================================================Play & Win Coins Only

                  controllcontainersmall.getsmall(() {
                    controller.showbuttonad(
                        context,
                        '/Play_Win',
                        '/Select_Category',
                        transition,
                        widget.indexs,
                        Loan_List);
                    // Get.to(() => Play_Win());
                  },
                      const Color(0xFFFFFFFF),
                      'asset/image/loan/Icons/select-category-screen-icon/coins.png',
                      'Play & Win Coins Only',
                      'Play Games & Earn Up to 1,00,000 Coins Daily',
                      'Play',
                      const Color(0xFF3EC000)),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  // /=====================================================================================================EMI Calculator

                  controllcontainersmall.getsmall(() {
                    // Get.to(() => EMI_Type());
                    controller.showbuttonad(
                        context,
                        '/EMI_Type',
                        '/Select_Category',
                        transition,
                        widget.indexs,
                        Loan_List);
                  },
                      const Color(0xFFEEFAFF),
                      'asset/image/loan/Icons/select-category-screen-icon/EMI-icon.png',
                      'EMI Calculator',
                      'Easy manage your monthly emi using emi calculator',
                      'Calculate',
                      const Color(0xFF0EB4FB)),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  // /=====================================================================================================Credit Score

                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Credit_Score1(), transition: transition);
                    controller.showbuttonad(
                        context,
                        '/Credit_Score1',
                        '/Select_Category',
                        transition,
                        widget.indexs,
                        Loan_List);
                  },
                      const Color(0xFFFEE9FF),
                      'asset/image/loan/Icons/select-category-screen-icon/creditscore-icon.png',
                      'Credit Score',
                      'Check your credit score free and increase for best loan offers',
                      'Check Now',
                      const Color(0xFFC610CA)),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  // /=====================================================================================================listTileMedium

                  native.getNT('/Select_Category', 'listTileMedium'),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  // /=====================================================================================================Play & Win Coins Now

                  controllcontainersmall.getsmall(() {
                    controller.showbuttonad(
                        context,
                        '/Play_Win',
                        '/Select_Category',
                        transition,
                        widget.indexs,
                        Loan_List);
                    // Get.to(() => Play_Win());
                  },
                      const Color(0xFFFFFFFF),
                      'asset/image/loan/Icons/select-category-screen-icon/coins.png',
                      'Play & Win Coins Now',
                      'Play Games & Earn Up to 1,00,000 Coins Daily',
                      'Win',
                      const Color(0xFF3EC000)),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  // /=====================================================================================================Near ATM

                  controllcontainersmall.getsmall(() {
                    launchMapsUrl('ATM');
                  },
                      const Color(0xFFF9EDFF),
                      'asset/image/loan/Icons/select-category-screen-icon/atm-icon.png',
                      'Near ATM',
                      'Now find your nearest atm machine online by only one click',
                      'Explore',
                      const Color(0xFF9614D1)),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),

//============================================================================================Near Bank
                  controllcontainersmall.getsmall(() {
                    launchMapsUrl('Bank');
                  },
                      const Color(0xFFFFEDED),
                      'asset/image/loan/Icons/select-category-screen-icon/bank-icon.png',
                      'Near Bank',
                      'Now find your nearest bank online by only one click',
                      'Explore',
                      const Color(0xFFDA3030)),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
//==================================================================================================listTile
                  native.getNT('/Select_Category', 'listTile'),
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
//================================================================================================================   Insurance
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => insurance1());
                    controller.showbuttonad(
                        context,
                        '/insurance1',
                        '/Select_Category',
                        transition,
                        widget.indexs,
                        Loan_List);
                  },
                      const Color(0xFFF3FFEE),
                      'asset/image/loan/Icons/select-category-screen-icon/insurance-icon.png',
                      'Insurance',
                      'Future protection - complete protection for your loved ones',
                      'Check Now',
                      const Color(0xFF009C19)),
                  SizedBox(
                    height: ScreenSize.pSize_60(),
                  ),
                ],
              ),
            ),
            banner.getBN('/Select_Category'),
          ],
        ),
      ),
    );
  }

  launchMapsUrl(String lat) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat near me';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
