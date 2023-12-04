// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Loan_Requirements extends StatelessWidget {
  const Loan_Requirements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context,  '/Loan_Requirements', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar((){
          backbuttoncontroller.showBackbuttonad(
              context,  '/Loan_Requirements', transition);
        },
        'Loan Requirements'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT('/Loan_Requirements', 'listTileMedium'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: ScreenSize.horizontalBlockSize! * 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(-0.5, 1.5),
                                color: Colors.black26,
                                blurRadius: 0.1)
                          ]),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/borrower-icon.png',
                              """The borrower must be a minimum
of 18 years of age."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/income-icon.png',
                              """The individual must have a regular
source of income with a full-time 
emploment."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/bank-icon.png',
                              """The borrower must have an active back account."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/loandocument-icon.png',
                              """The applicant must have all the required documents to apply for this loan."""),
                          SizedBox(
                              height: ScreenSize.horizontalBlockSize! * 5.560),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/mobile-icon.png',
                              """This customer must have an active phone number."""),
                          SizedBox(height: ScreenSize.pSize_50()),
                          controllerelevated.getelevated(() {
                            controller.showbuttonad(context, '/Documents_required', '/Loan_Requirements', transition, index, '');
                            // Get.to(() => Documents_required());
                          }, 'Apply Now'),
                          SizedBox(height: ScreenSize.pSize_20()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.pSize_80()),
                ],
              ),
            ),
            banner.getBN('/Loan_Requirements')
          ],
        ),
      ),
    );
  }
}
