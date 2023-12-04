// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import 'model.dart';

class Loan_Details extends StatelessWidget {
  // final List<Detail> detailList;
  //
  // int indexs;
  Loan_Details({Key? key}) : super(key: key);
   Detail detail = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>   backbuttoncontroller.showBackbuttonad(
          context, '/Loan_type', transition),
      child: Scaffold(
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar((){
            backbuttoncontroller.showBackbuttonad(
                context,  '/Loan_Details', transition);
          }

            // Get.back();
         , 'Loan Details'),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    // facebook_native.getfacebooknative(),
                    native.getNT('/Loan_Details', 'listTileMedium'),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 0.1,
                                    offset: Offset(0.1, 0.1),
                                    color: Colors.black12)
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: ScreenSize.pSize_10()),
                              Row(
                                children: [
                                  SizedBox(width: ScreenSize.pSize_10()),
                                  Text(detail.text1,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: ScreenSize.pSize_20())),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.5),
                                    child: Text((detail.discrip).toString().replaceAll("#", '\n'),
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: ScreenSize.pSize_12())),
                                  ),
                                  SizedBox(height: ScreenSize.pSize_15()),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: ScreenSize.pSize_50()),
                  ],
                ),
              ),
              banner.getBN('/Loan_Details')
            ],
          )),
    );
  }
}
