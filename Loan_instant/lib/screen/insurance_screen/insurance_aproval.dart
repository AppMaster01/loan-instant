// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Controller_Page/widget_controller/recomannded_best_deal.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class insurance_Approved extends StatefulWidget {
  const insurance_Approved({Key? key}) : super(key: key);

  @override
  State<insurance_Approved> createState() => _insurance_ApprovedState();
}

class _insurance_ApprovedState extends State<insurance_Approved> {
  double value = 50;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()  {controller.showbuttonad(context, '/Select_Category',
        '/insurance_Approved', transition,
        index, '');
      return Future.value(false);

        },
    child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar(
            (){
              backbuttoncontroller.showBackbuttonad(
                  context,  '/insurance_Approved', transition);
            }

          // Get.back();
        , 'Congratulations'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT('/Approved_Loan_Screen', 'listTileMedium'),
                  SizedBox(height: ScreenSize.pSize_10()),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: ScreenSize.pSize_24()),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(-1, 1.5),
                                blurRadius: 1)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: ScreenSize.pSize_20()),
                          GestureDetector(
                            child: Column(
                              children: [
                                Text(
                                  'Great !!',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: ScreenSize.pSize_30(),
                                      color: const Color(0xFF2A7000)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenSize.pSize_10()),
                          const Image(
                              image: AssetImage(
                                  'asset/image/loan/Icons/verify.png')),
                          SizedBox(height: ScreenSize.pSize_10()),
                          Text('Your request has been approved.',
                              style: GoogleFonts.poppins(
                                  fontSize: ScreenSize.pSize_15(),
                                  fontWeight: FontWeight.w500)),
                          SizedBox(height: ScreenSize.pSize_10()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: ScreenSize.horizontalBlockSize! * 80,
                                height: ScreenSize.horizontalBlockSize! * 13,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    """We need 48 hours for review your application and we will contact you in 48 hours.""",
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        fontSize: ScreenSize.pSize_12(),
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          SizedBox(height: ScreenSize.pSize_20()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.pSize_40()),
                  controllerelevated.getelevated(() {
                    controller.showbuttonad(context, '/Select_Category',
                        '/insurance_Approved', transition, index, Loan_List);
                    // Get.to(() => Get_Stard());
                  }, 'Back to Home'),
                  SizedBox(height: ScreenSize.pSize_50()),
                ],
              ),
            ),
            banner.getBN('/Approved_Loan_Screen'),
          ],
        ),
      ),
    );
  }
}
