// ignore_for_file: sized_box_for_whitespace, unnecessary_string_interpolations, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Controller_Page/widget_controller/recomannded_best_deal.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Fill_Up_Form/Fill_Up_Form1.dart';
import '../Fill_Up_Form/Fill_Up_Form4.dart';

// ignore: camel_case_types, must_be_immutable
class Loan_Summary_Screen extends StatefulWidget {
  final List<Loan> loanlist;
  int indexs;

  Loan_Summary_Screen({Key? key, required this.indexs, required this.loanlist})
      : super(key: key);

  @override
  State<Loan_Summary_Screen> createState() => _Loan_Summary_ScreenState();
}

// ignore: camel_case_types
class _Loan_Summary_ScreenState extends State<Loan_Summary_Screen> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    print('abc${abc[0][0][0]}');
    // log(((int.parse(abc[3]) * abc[2]).toString()));
    final List<ChartData> chartData = [
      ChartData('Loan Amount', (int.parse(abc[0][0][3]) * abc[0][0][2]) + 0.0,
          const Color(0xFF42AE00)),
      ChartData(
          'Interest',
          (int.parse(abc[0][0][3]) * abc[0][0][2]) - abc[0][0][0] + 0.0,
          const Color(0xFFFFE600)),
      ChartData('Loan Fee', (abc[0][0][0] / 50), const Color(0xFF646AFF)),
    ];
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(
              context, '/Loan_Summary_Screen', transition),
      child: Scaffold(
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar(

            // Get.back();
                  () {
                backbuttoncontroller.showBackbuttonad(
                    context, '/Loan_Summary_Screen', transition);
              }, 'Loan Summary'),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
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
                          child: Column(
                            children: [
                              SizedBox(
                                height: ScreenSize.pSize_20(),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      controllercolor.getcircle(
                                          context,
                                          'Loan Amount',
                                          0xFF3EA300,
                                          0xFF141414),
                                      SizedBox(height: ScreenSize.pSize_20()),
                                      controllercolor.getcircle(context,
                                          'Interest', 0xFFFFE500, 0xFF141414),
                                      SizedBox(height: ScreenSize.pSize_20()),
                                      controllercolor.getcircle(context,
                                          'Loan Fee', 0xFF6268FB, 0xFF141414),
                                    ],
                                  ),
                                  SizedBox(
                                    width: ScreenSize.pSize_45(),
                                  ),
                                  Container(
                                    height: ScreenSize.pSize_150(),
                                    width: ScreenSize.pSize_150(),
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: Container(
                                              width: ScreenSize.pSize_190(),
                                              height: ScreenSize.pSize_190(),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(100),
                                                  border: Border.all(
                                                      width: 2,
                                                      style: BorderStyle.solid,
                                                      color: Colors.black12),
                                                  color: const Color(
                                                      0xFFF3F3F3)),
                                              child: Center(
                                                child: Container(
                                                  width: ScreenSize.pSize_55(),
                                                  height: ScreenSize.pSize_55(),
                                                  decoration: BoxDecoration(
                                                      color:
                                                      const Color(0xFFF3F3F3),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                                  child: Center(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Your Loan',
                                                          style: GoogleFonts
                                                              .poppins(
                                                              fontWeight:
                                                              FontWeight.w600,
                                                              fontSize: ScreenSize
                                                                  .horizontalBlockSize! *
                                                                  2.7),
                                                        ),
                                                        Text(
                                                          '\$${abc[0][0][0]}',
                                                          style: GoogleFonts
                                                              .poppins(
                                                              fontWeight:
                                                              FontWeight.w600,
                                                              fontSize: ScreenSize
                                                                  .horizontalBlockSize! *
                                                                  3.2),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        SfCircularChart(palette: const <Color>[
                                          Color(0xFF42AE00),
                                          Color(0xFFFFE600),
                                          Color(0xFF6268FB),
                                        ], series: <
                                            CircularSeries<ChartData, String>>[
                                          DoughnutSeries<ChartData, String>(
                                              animationDuration: 1200,
                                              dataSource: chartData,
                                              pointColorMapper:
                                                  (ChartData data, _) =>
                                              data.color,
                                              xValueMapper:
                                                  (ChartData data, _) => data.x,
                                              yValueMapper:
                                                  (ChartData data, _) => data.y,
                                              innerRadius: '40%',
                                              radius: '100%',
                                              groupMode:
                                              CircularChartGroupMode.point,
                                              groupTo: 2),
                                        ]),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenSize.pSize_20(),
                              ),
                              Text(
                                '-----------------------------------',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xFFD3D3D3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenSize.pSize_15()),
                              ),
                              SizedBox(
                                height: ScreenSize.pSize_20(),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: ScreenSize.pSize_20(),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      controllername.getname(
                                          context, 'Your Name :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername.getname(
                                          context, 'Email Address :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername.getname(
                                          context, 'Total Loan Amount :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername.getname(
                                          context, 'Interest Rate :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername.getname(
                                          context, 'Loan Term :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername.getname(
                                          context, 'Total Fee :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername.getname(
                                          context, 'Monthly Payment :'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: ScreenSize.pSize_45()),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      controllername2.getname(
                                          context, "${abc[0][1]}"),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername2.getname(context, abc[1]),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername2.getname(
                                          context, '\$${abc[0][0][0]}'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername2.getname(
                                          context, '${abc[0][0][1]}%'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername2.getname(
                                          context, '${abc[0][0][2]}Months'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername2.getname(
                                          context, '\$${abc[0][0][4]}'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                      controllername2.getname(
                                          context, '\$${abc[0][0][3]}'),
                                      SizedBox(
                                        height: ScreenSize.pSize_25(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenSize.pSize_30(),
                              ),
                              controllerelevated.getelevated(() {
                                controller.showbuttonad(
                                    context,
                                    '/Approved_Loan_Screen',
                                    '/Loan_Summary_Screen',
                                    transition,
                                    '',
                                    abc);
                                // Get.to(() => Approved_Loan_Screen());
                              }, 'Apply Now'),
                              SizedBox(
                                height: ScreenSize.pSize_30(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.pSize_50(),
                    ),
                  ],
                ),
              ),
              banner.getBN('/Loan_Summary_Screen'),
            ],
          )),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}

List fees = [55, 43, 37, 18, 20, 40, 34, 32, 35, 41, 19, 50];
