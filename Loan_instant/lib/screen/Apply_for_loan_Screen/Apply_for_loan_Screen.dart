// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';

import '../../ads/Google_Ads.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Apply_for_loan_Screen extends StatelessWidget {
  const Apply_for_loan_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);

    return WillPopScope(
      onWillPop: () {
        controller.showbuttonad(context, '/Get_Stard', '/Apply_for_loan_Screen',
            transition, index, '');
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar((){

        }, ''),
            // Get.back();
            // backbuttoncontroller.showBackbuttonad(
            //     context, '/Apply_for_loan_Screen', transition);
            // return Future.value(false);
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT('/Apply_for_loan_Screen', 'listTile'),
                  SizedBox(height: ScreenSize.pSize_10()),
                  Image(
                      height: ScreenSize.pSize_250(),
                      image:
                          const AssetImage('asset/image/loan/Icons/4833674 1.png')),
                  SizedBox(height: ScreenSize.pSize_40()),
                  controllerelevated.getelevated(() {
                    // Get.to(() => Benefits(), transition: transition);
                    controller.showbuttonad(context, '/Benefits',
                        '/Apply_for_loan_Screen', transition, index, '');
                  }, 'Apply For Loan'),
                  SizedBox(height: ScreenSize.pSize_20()),
                  controllerelevated.getelevated(() {
                    // Get.to(() => Loan_type(), transition: transition);
                    controller.showbuttonad(context, '/Loan_type',
                        '/Apply_for_loan_Screen', transition, index, '');
                  }, 'Loan Types'),
                  SizedBox(height: ScreenSize.pSize_80()),
                ],
              ),
            ),
            banner.getBN('/Apply_for_loan_Screen'),
          ],
        ),
      ),
    );
  }
}
