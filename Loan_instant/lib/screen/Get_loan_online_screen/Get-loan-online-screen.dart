// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';

import '../../../Controller_Page/small_container/container.dart';
import '../../ads/Google_Ads.dart';
import '../../Controller_Page/widget_controller/recomannded_best_deal.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Get_loan_online_screen extends StatelessWidget {
  const Get_loan_online_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Get_loan_online_screen', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar((){
          backbuttoncontroller.showBackbuttonad(
              context, '/Get_loan_online_screen', transition);
        }


            // Get.back();
            ,
            'Select Loan'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
//==========================================================================================================================================Payday Loan
                  SizedBox(height: ScreenSize.pSize_20()),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFFEE9FF),
                      'asset/image/loan/Icons/select-loan-screen-icon/paydayloan-icon.png',
                      'Payday Loan',
                      'Customized payday Loan up to \$100K with flexible...',
                      'Apply',
                      const Color(0xFFC610CA)),
//=============================================================================================================================Sameday Loan

                  SizedBox(height: ScreenSize.pSize_30()),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFFFFBEB),
                      'asset/image/loan/Icons/select-loan-screen-icon/samedayloan-icon.png',
                      'Sameday Loan',
                      'Get online loan on same day apply now',
                      'Apply',
                      const Color(0xFFF4C400)),
//================================================================================================================================Play & Win Coins Only
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    controller.showbuttonad(
                        context,
                        '/Play_Win',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                    // Get.to(() => Play_Win());
                  },
                      const Color(0xFFFFFFFF),
                      'asset/image/loan/Icons/select-category-screen-icon/coins.png',
                      'Play & Win Coins Only',
                      'Play Games & Earn Up to 1,00,000 Coins Daily',
                      'Play',
                      const Color(0xFF3EC000)),
//====================================================================================================================================Unsecured Loan
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFFFEDED),
                      'asset/image/loan/Icons/select-loan-screen-icon/unsecuredloan-icon.png',
                      'Unsecured Loan',
                      'Unsecured loans are loans that are not backed by',
                      'Apply',
                      const Color(0xFFDA3030)),
//========================================================================================================================================Secured Loan
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFEEFAFF),
                      'asset/image/loan/Icons/select-loan-screen-icon/securedloan-icon.png',
                      'Secured Loan',
                      'Unsecured loans are loans that are not backed by',
                      'Apply',
                      const Color(0xFF0EB4FB)),
//===========================================================================================================================================listTileMedium
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  native.getNT('/Select_Category', 'listTileMedium'),
//===============================================================================================================================================Play & Win Coins Now
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    controller.showbuttonad(
                        context,
                        '/Play_Win',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                    // Get.to(() => Play_Win());
                  },
                      const Color(0xFFFFFFFF),
                      'asset/image/loan/Icons/select-category-screen-icon/coins.png',
                      'Play & Win Coins Only',
                      'Play Games & Earn Up to 1,00,000 Coins Daily',
                      'Win',
                      const Color(0xFF3EC000)),
//=======================================================================================================================================================Education Loan
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFF9EDFF),
                      'asset/image/loan/Icons/select-loan-screen-icon/educationloan-icon.png',
                      'Education Loan',
                      'Get instant Education Loan Online for Pursue your dream',
                      'Apply',
                      const Color(0xFF9614D1)),
//=====================================================================================================================================================Home Loan
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFFFF1EA),
                      'asset/image/loan/Icons/select-loan-screen-icon/homeloan-icon.png',
                      'Home Loan',
                      'A home loan is a secured loan taken from a financial institution',
                      'Apply',
                      const Color(0xFFEE5600)),
//==============================================================================================================================================listTile
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  native.getNT('/Select_Category', 'listTile'),

//==========================================================================================================================================================Car Loan
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFF3FFEE),
                      'asset/image/loan/Icons/select-loan-screen-icon/carloan-icon.png',
                      'Car Loan',
                      'Avail a car loan, or opt for a pre-approved car loan, and get the best',
                      'Apply',
                      const Color(0xFF009C19)),
//=================================================================================================================================================Gold Loan
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Loan_Requirements());
                    controller.showbuttonad(
                        context,
                        '/Loan_Requirements',
                        '/Get_loan_online_screen',
                        transition,
                        index,
                        Loan_List);
                  },
                      const Color(0xFFFFEDF5),
                      'asset/image/loan/Icons/select-loan-screen-icon/goldloan-icon.png',
                      'Gold Loan',
                      'A gold loan is a method of availing finance/loan against your gold',
                      'Apply',
                      const Color(0xFFC50053)),
                  SizedBox(
                    height: ScreenSize.pSize_80(),
                  ),
                ],
              ),
            ),
            banner.getBN('/Get_loan_online_screen'),
          ],
        ),
      ),
    );
  }
}
