// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Loan_Calculate_Screen/Loan_Calculate_Screen.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

double EMI = 0;
double loanamountsliderval = volumeValue;
double interestRatesliderval = PR;
double loanTenuresliderval = month;

class Lorem_Ipsum extends StatefulWidget {

   const Lorem_Ipsum({super.key});

  @override
  State<Lorem_Ipsum> createState() => Lorem_IpsumState();
}

class Lorem_IpsumState extends State<Lorem_Ipsum> {
  TextEditingController loansliderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context,  '/Lorem_Ipsum', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar((){
          backbuttoncontroller.showBackbuttonad(context, '/Lorem_Ipsum', transition);

        }
          // Get.back();
        , 'Lorem Ipsum'),
        body: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 35),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  native.getNT('/Lorem_Ipsum', 'listTileMedium'),
                  SizedBox(height: ScreenSize.pSize_20()),
                  myWidget(loanamountsliderval.roundToDouble(), 1, 100000, 0),
                  myWidget(interestRatesliderval.roundToDouble(), 1, 18, 1),
                  myWidget(loanTenuresliderval.roundToDouble(), 1, 36, 2),
                  SizedBox(height: ScreenSize.pSize_60()),
                  controllerelevated.getelevated(() {
                    controller.showbuttonad(context, '/Your_EMI', '/Lorem_Ipsum', transition,index,'');
                    // Get.to(() => Your_EMI());
                    double rate = interestRatesliderval.round() / 12 / 100;

                    double emi = loanamountsliderval.round() *
                        rate *
                        (pow(1 + rate, loanTenuresliderval.round()) /
                            (pow(1 + rate, loanTenuresliderval.round()) - 1));

                    EMI = emi;
                    // controller.showbuttonad(context, '/Your_EMI', '/Lorem_Ipsum', transition);
                  }, 'Calculate'),

                  SizedBox(
                    height: ScreenSize.pSize_80(),
                  ),

                ],
              ),
            ),
            banner.getBN('/Lorem_Ipsum')
          ],
        ),
      ),
    );
  }

  Widget myWidget(double sliderval, double min, double max, int i) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                (i == 0)
                    ? Column(
                        children: [
                          SizedBox(height: ScreenSize.pSize_20()),
                          Row(
                            children: [
                              SizedBox(width: ScreenSize.pSize_20()),
                              Text('Loan Amount',
                                  style: GoogleFonts.poppins(
                                      fontSize: ScreenSize.pSize_20(),
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          SizedBox(height: ScreenSize.pSize_20()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "\$${(sliderval.toInt())}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: ScreenSize.pSize_12()),
                              ),
                              SizedBox(width: ScreenSize.pSize_150()),
                              Text(
                                '\$100,000',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: ScreenSize.pSize_12()),
                              )
                            ],
                          ),
                        ],
                      )
                    : (i == 1)
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: ScreenSize.pSize_20()),
                                  Text('Interest Rate',
                                      style: GoogleFonts.poppins(
                                          fontSize: ScreenSize.pSize_20(),
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                              SizedBox(height: ScreenSize.pSize_20()),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "${sliderval.toInt()} %",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: ScreenSize.pSize_12()),
                                  ),
                                  SizedBox(width: ScreenSize.pSize_180()),
                                  Text(
                                    '18%',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: ScreenSize.pSize_12()),
                                  )
                                ],
                              ),
                            ],
                          )
                        : (i == 2)
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: ScreenSize.pSize_20()),
                                      Text('Loan Duration',
                                          style: GoogleFonts.poppins(
                                              fontSize: ScreenSize.pSize_20(),
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  SizedBox(height: ScreenSize.pSize_20()),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "${sliderval.toInt()} Months",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: ScreenSize.pSize_12()),
                                      ),
                                      SizedBox(width: ScreenSize.pSize_140()),
                                      Text(
                                        '36 Months',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: ScreenSize.pSize_12()),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            : Text(
                                "${sliderval.toInt()}",
                              )
              ],
            ),
            Column(
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      trackHeight: 14,
                      inactiveTrackColor: const Color(0xFFFBFCFC),
                      thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 12.5, elevation: 1)),
                  child: Column(
                    children: [
                      Slider(
                        value: sliderval,
                        min: min,
                        max: max,
                        activeColor: const Color(0xFFD8A0F1),
                        overlayColor:
                            const MaterialStatePropertyAll(Color(0xFFD8A0F1)),
                        onChanged: (val) {
                          setState(() {
                            if (i == 0) {
                              loanamountsliderval = val;
                              sliderval = val;
                            } else if (i == 1) {
                              // loansliderController.text = val.round().toString();
                              interestRatesliderval = val;
                              sliderval = val;
                            } else if (i == 2) {
                              loanTenuresliderval = val;
                              sliderval = val;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ScreenSize.pSize_20()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
