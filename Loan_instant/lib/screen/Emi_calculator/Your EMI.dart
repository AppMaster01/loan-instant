
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import 'Lorem_Ipsum.dart';

class Your_EMI extends StatefulWidget {
  const Your_EMI({Key? key}) : super(key: key);

  @override
  State<Your_EMI> createState() => _Your_EMIState();
}

class _Your_EMIState extends State<Your_EMI> {
  // double _width = 50;
  // double _height = 50;
  // Color _color = Colors.green;
  // BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Your_EMI', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar(
            (){
              backbuttoncontroller.showBackbuttonad(
                  context,  '/Your_EMI', transition);
            }
            // Get.back();

            ,
            'Your EMI'),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenSize.pSize_28(),
                  horizontal: ScreenSize.pSize_23()),
              child: Container(
                height: ScreenSize.horizontalBlockSize! * 123,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-0.5, 0.5),
                          blurRadius: 2)
                    ]),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.pSize_30()),
                    Text(
                      'Monthly Payment',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenSize.pSize_20()),
                    ),
                    SizedBox(height: ScreenSize.pSize_45()),
                    Text('${loanTenuresliderval.round().toString()} Months',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF5E5E5E),
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenSize.pSize_13(),
                        )),
                    SizedBox(height: ScreenSize.pSize_25()),
                    Text('\$${EMI.round()}',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFD88DFA),
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenSize.horizontalBlockSize! * 9.4,
                        )),
                    SizedBox(height: ScreenSize.pSize_30()),
                    Text('Total Payment',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF5E5E5E),
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenSize.pSize_13(),
                        )),
                    SizedBox(height: ScreenSize.pSize_20()),
                    Text(
                        (EMI * loanTenuresliderval.roundToDouble())
                            .round()
                            .toString(),
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF141414),
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenSize.pSize_16(),
                        )),
                    SizedBox(height: ScreenSize.pSize_25()),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          trackHeight: 8,
                          inactiveTrackColor: const Color(0xFFF4C300),
                          activeTrackColor: const Color(0xFF9614D1),
                          thumbColor: Colors.transparent,
                          thumbShape: const RoundSliderThumbShape(
                              elevation: 0,
                              disabledThumbRadius: 0,
                              pressedElevation: 0,
                              enabledThumbRadius: 0)),
                      child: Slider(
                        value: loanamountsliderval,
                        max: (EMI * loanTenuresliderval.roundToDouble()),
                        min: 0,
                        onChanged: (double value) {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: ScreenSize.pSize_3()),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF9614D1),
                          minRadius: ScreenSize.horizontalBlockSize! * 1.5,
                        ),
                        Column(
                          children: [
                            SizedBox(height: ScreenSize.pSize_24()),
                            const Text("Total Principal"),
                            SizedBox(height: ScreenSize.pSize_8()),
                            Text(
                              NumberFormat.simpleCurrency(
                                      locale: 'en-US', decimalDigits: 0)
                                  .format(loanamountsliderval.roundToDouble()),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: ScreenSize.horizontalBlockSize! * 7),
                        Column(
                          children: [
                            SizedBox(height: ScreenSize.pSize_24()),
                            const Text("Total Interest"),
                            SizedBox(height: ScreenSize.pSize_8()),
                            Text(
                              NumberFormat.simpleCurrency(decimalDigits: 0).format(
                                  (EMI * loanTenuresliderval.roundToDouble() -
                                      loanamountsliderval.roundToDouble())),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFFF4C300),
                          minRadius: ScreenSize.horizontalBlockSize! * 1.5,
                        ),
                        SizedBox(width: ScreenSize.pSize_3()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            banner.getBN('/Your_EMI')
          ],
        ),
      ),
    );
  }
}
