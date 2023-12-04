// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/small_container/container.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_qury/Media_qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class EMI_Type extends StatelessWidget {
  const EMI_Type({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/EMI_Type', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/EMI_Type', transition);
        }
            // Get.back();

            , 'EMI Type'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.pSize_20()),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Lorem_Ipsum());
                    controller.showbuttonad(context, '/Lorem_Ipsum',
                        '/EMI_Type', transition, index, '');
                  },
                      const Color(0xFFFFF5F0),
                      'asset/image/loan/Icons/personalloan-icon.png',
                      'Personal Loan EMI Calculator',
                      'To calculate EMI simply...  ',
                      'Apply',
                      const Color(0xFFFA762C)),
//==========================================================================================Home Loan EMI Calculator
                  SizedBox(height: ScreenSize.pSize_30()),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Lorem_Ipsum());
                    controller.showbuttonad(context, '/Lorem_Ipsum',
                        '/EMI_Type', transition, index, '');
                  },
                      const Color(0xFFFFEDF5),
                      'asset/image/loan/Icons/homeloan-icon.png',
                      'Home Loan EMI Calculator',
                      'To calculate EMI simply click and drag on the resp...',
                      'Apply',
                      const Color(0xFFC50053)),
//===================================================================================================Play & Win Coins Only
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(
                      (){
                        controller.showbuttonad(context, '/Play_Win', '/EMI_Type',
                            transition, index, '');
                      },
                      const Color(0xFFFFFFFF),
                      'asset/image/loan/Icons/select-category-screen-icon/coins.png',
                      'Play & Win Coins Only',
                      'Play Games & Earn Up to 1,00,000 Coins Daily',
                      'Play',
                      const Color(0xFFF4C300)),
//=======================================================================================================Car Loan EMI Calculator
                  SizedBox(
                    height: ScreenSize.pSize_30(),
                  ),
                  controllcontainersmall.getsmall(() {
                    // Get.to(() => Lorem_Ipsum());
                    controller.showbuttonad(context, '/Lorem_Ipsum',
                        '/EMI_Type', transition, index, '');
                  },
                      const Color(0xFFF3FFEE),
                      'asset/image/loan/Icons/carloan-icon.png',
                      'Car Loan EMI Calculator',
                      'To calculate EMI simply click and drag on the resp...',
                      'Apply',
                      const Color(0xFF009C19)),
                  SizedBox(height: ScreenSize.pSize_80()),
                ],
              ),
            ),
            banner.getBN('/EMI_Type'),
          ],
        ),
      ),
    );
  }
}
