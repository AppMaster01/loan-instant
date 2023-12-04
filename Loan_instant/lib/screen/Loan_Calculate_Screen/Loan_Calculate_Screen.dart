// ignore_for_file: use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names, must_be_immutable, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/helpers/show_number_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../../../Media_Qury/Media_Qury.dart';
import '../../ads/Google_Ads.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Emi_calculator/Lorem_Ipsum.dart';

double month = 10;
double PR = 12;
double volumeValue = 50000;
double Result = 0;
double instulment = 0;

class Loan_Calculate_Screen extends StatefulWidget {
  int indexs;

  Loan_Calculate_Screen({Key? key, required this.indexs});

  @override
  State<Loan_Calculate_Screen> createState() => _Loan_Calculate_ScreenState();
}

class _Loan_Calculate_ScreenState extends State<Loan_Calculate_Screen> {
  // void onVolumeChanged(double value) {
  //   setState(() {
  //     _volumeValue = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(
              context, '/Loan_Calculate_Screen', transition),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                  onTap: () {
                    backbuttoncontroller.showBackbuttonad(
                        context, '/Loan_Calculate_Screen', transition);
                  },
                  child: Center(
                      child: Image(
                          height: ScreenSize.pSize_20(),
                          image: const AssetImage(
                              'asset/image/loan/Icons/back-icon.png'))))),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ScreenSize.pSize_28(),
                          horizontal: ScreenSize.pSize_23()),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(-1, 1.5),
                                  blurRadius: 1)
                            ]),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: ScreenSize.pSize_40()),
                              Stack(
                                children: [
                                  Container(
                                    height:
                                    ScreenSize.horizontalBlockSize! * 65,
                                    // width: ScreenSize.horizontalBlockSize! * 200,
                                    // color: Colors.black12,
                                    child: SfRadialGauge(
                                        enableLoadingAnimation: true,
                                        animationDuration: 1800,
                                        axes: [
                                          RadialAxis(
                                            annotations: [
                                              GaugeAnnotation(
                                                widget: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                        width: ScreenSize
                                                            .pSize_20()),
                                                    Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          SizedBox(
                                                              height: ScreenSize
                                                                  .pSize_60()),
                                                          Text(
                                                              '\$${loanamountsliderval
                                                                  .round()}',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: ScreenSize
                                                                    .pSize_30(),
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                              )),
                                                          SizedBox(
                                                              height: ScreenSize
                                                                  .pSize_8()),
                                                          Container(
                                                            width: ScreenSize
                                                                .pSize_140(),
                                                            height: ScreenSize
                                                                .pSize_34(),
                                                            child: Text(
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                """How much do you\nwant to borrow?""",
                                                                style:
                                                                GoogleFonts
                                                                    .poppins(
                                                                  fontSize:
                                                                  ScreenSize
                                                                      .pSize_11(),
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                            minimum: 0,
                                            maximum: 100000,
                                            startAngle: 150,
                                            endAngle: 32,
                                            showLabels: false,
                                            showTicks: false,
                                            radiusFactor: 1.0,
                                            axisLineStyle: const AxisLineStyle(
                                              cornerStyle:
                                              CornerStyle.bothCurve,
                                              color: Color(0xFFF7E5FF),
                                              thickness: 18,
                                            ),
                                            pointers: [
                                              RangePointer(
                                                value: loanamountsliderval
                                                    .roundToDouble(),
                                                cornerStyle:
                                                CornerStyle.bothCurve,
                                                width: 18,
                                                sizeUnit:
                                                GaugeSizeUnit.logicalPixel,
                                                color: const Color(0xFFD986FF),
                                              ),
                                              MarkerPointer(
                                                borderColor: Colors.black12,
                                                animationDuration: 1500,
                                                animationType:
                                                AnimationType.ease,
                                                value: loanamountsliderval
                                                    .roundToDouble(),
                                                enableDragging: true,
                                                onValueChanged: (value) =>
                                                    setState(() {
                                                      loanamountsliderval =
                                                          value;
                                                    }),
                                                markerHeight:
                                                ScreenSize.pSize_28(),
                                                markerWidth:
                                                ScreenSize.pSize_28(),
                                                markerType: MarkerType.circle,
                                                color: const Color(0xFFD986FF),
                                                borderWidth: 1,
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                  Positioned(
                                    bottom: ScreenSize.horizontalBlockSize! * 4,
                                    left:
                                    ScreenSize.horizontalBlockSize! * 14.5,
                                    child: Center(
                                      child: Text(
                                          '--------------------------------------',
                                          style: TextStyle(
                                              color: const Color(0xFFD88DFA),
                                              fontSize: ScreenSize.pSize_23())),
                                    ),
                                  ),
                                ],
                              ),
                              controllercontain.getelevated(context, () {
                                // _arrowAnimationController.isCompleted
                                //     ? _arrowAnimationController.reverse()
                                //     : _arrowAnimationController.forward();
                                showMaterialNumberPicker(
                                    context: context,
                                    title: 'Loan Duration',
                                    headerColor: Colors.black12,
                                    headerTextColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    buttonTextColor: Colors.black,
                                    maxShortSide:
                                    ScreenSize.horizontalBlockSize! * 50,
                                    maxLongSide:
                                    ScreenSize.horizontalBlockSize! * 100,
                                    maxNumber: 36,
                                    minNumber: 4,
                                    selectedNumber: loanTenuresliderval.round(),
                                    onChanged: (value) =>
                                        setState(() {
                                          loanTenuresliderval =
                                              value.roundToDouble();
                                        }));
                              }, 'Loan Duration',
                                  '${loanTenuresliderval.round()
                                      .toString()} Months'),
                              SizedBox(height: ScreenSize.pSize_30()),
                              controllercontain.getelevated(context, () {
                                showMaterialNumberPicker(
                                  context: context,
                                  title: 'Loan Duration',
                                  headerColor: Colors.black12,
                                  headerTextColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  buttonTextColor: Colors.black,
                                  maxLongSide:
                                  ScreenSize.horizontalBlockSize! * 100,
                                  maxNumber: 20,
                                  minNumber: 7,
                                  selectedNumber: interestRatesliderval.round(),
                                  onChanged: (value) =>
                                      setState(() {
                                        interestRatesliderval =
                                            value.roundToDouble();
                                      }),
                                );
                              }, 'Interest Rate',
                                  '${interestRatesliderval.round()} %APY    '),
                              SizedBox(height: ScreenSize.pSize_45()),
                              controllerelevated.getelevated(() {
                                double rate = PR.round() / 12 / 100;

                                double result = volumeValue.round() *
                                    rate *
                                    (pow(1 + rate, month.round()) /
                                        (pow(1 + rate, month.round()) - 1));
                                Result = result;
                                // Get.to(() => Lorem_Ipsum());
                                controller.showbuttonad(
                                    context,
                                    '/Lorem_Ipsum',
                                    '/Loan_Calculate_Screen',
                                    transition,
                                    widget.indexs,
                                    '');
                              }, 'EMI Calculator'),
                              SizedBox(height: ScreenSize.pSize_25()),
                              controllerelevated.getelevated(() {
                                controller.showbuttonad(
                                  context,
                                  '/See_Loans_Screens',
                                  '/Loan_Calculate_Screen',
                                  transition,
                                  loanamountsliderval.round(),
                                  widget.indexs,
                                );
                                // Get.to(
                                //   () => See_Loans_Screens(),
                                //   arguments: Loan_List[index]
                                // );
                              }, 'See Loans'),
                              SizedBox(height: ScreenSize.pSize_25()),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.pSize_40()),
                  ],
                ),
              ),
              banner.getBN('/Loan_Calculate_Screen'),
            ],
          )),
    );
  }
}
