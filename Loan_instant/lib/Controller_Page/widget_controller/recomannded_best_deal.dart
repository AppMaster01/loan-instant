import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/screen/Emi_calculator/Lorem_Ipsum.dart';
import 'package:loan_instant/screen/Loan_Calculate_Screen/Loan_Calculate_Screen.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../Media_Qury/Media_Qury.dart';

import '../../screen/Loan_Calculate_Screen/See_Loans_Screens.dart';
import '../Button_controller/Main_Controller.dart';
import 'Elevated_butoon.dart';

final controllerdata = Get.put(DataController());
final controllercolor = Get.put(circleController());
final controllername = Get.put(nameController());
final controllername2 = Get.put(name2Controller());
final TextEditingController controller0 = TextEditingController();

class DataController extends GetxController {
  var abc = Get.arguments;

  getData(context, ontap, colors, colors1, aamount, Instalment, Rate, Duration,
      String result, value) {
    return GestureDetector(
      onTap: ontap,
      //     () {
      //   // controller.showbuttonad(context, '/Fill_Up_Form1', '/See_Loans_Screens', transition);
      //   Get.to(() => Fill_Up_Form1(),
      //       arguments: Loan_List[index]
      //   );
      // },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-1, 1.5),
                        blurRadius: 1)
                  ]),
              child: Column(
                children: [
                  SizedBox(height: hight[index]),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.pSize_40()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controllertext.gettext(context, 'Amount',
                              FontWeight.w600, ScreenSize.pSize_13()),
                          controllertext.gettext(context, '\$${aamount}',
                              FontWeight.w600, ScreenSize.pSize_15()),
                        ],
                      ),
                      SizedBox(width: ScreenSize.horizontalBlockSize! * 22.5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: ScreenSize.pSize_23()),
                          controllertext.gettext(context, 'Monthly Instalment',
                              FontWeight.w600, ScreenSize.pSize_13()),
                          controllertext.gettext(
                              context,
                              '\$${Instalment}',
                              FontWeight.w600,
                              ScreenSize.pSize_15()),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.pSize_30()),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.horizontalBlockSize! * 10.8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controllertext.gettext(context, 'Rate',
                              FontWeight.w600, ScreenSize.pSize_13()),
                          SizedBox(
                            height: ScreenSize.pSize_20(),
                            child: controllertext.gettext(
                                context,
                                '${Rate}%p.a.',
                                FontWeight.w600,
                                ScreenSize.pSize_16()),
                          )
                        ],
                      ),
                      SizedBox(width: ScreenSize.horizontalBlockSize! * 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
// SizedBox(width: ScreenSize.pSize_23()),
                          controllertext.gettext(context, 'Duration',
                              FontWeight.w600, ScreenSize.pSize_13()),
                          controllertext.gettext(context, '${Duration} Months',
                              FontWeight.w600, ScreenSize.pSize_16()),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.pSize_8()),
                  Text('----------------------------------',
                      style: GoogleFonts.poppins(
                          color: Color(0xFDD3D3D3),
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.pSize_15())),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.pSize_10()),
                      Container(
                        height: ScreenSize.pSize_80(),
                        width: ScreenSize.pSize_80(),
                        child: SfRadialGauge(
                            animationDuration: 1800,
                            enableLoadingAnimation: true,
                            axes: <RadialAxis>[
                              RadialAxis(
                                minimum: 0,
                                maximum: 100,
                                showLabels: false,
                                showTicks: false,
                                startAngle: 270,
                                endAngle: 270,
                                radiusFactor: 0.7,
                                axisLineStyle: AxisLineStyle(
                                  thickness: 0.2,
                                  color: Color(0xFFF6E3FF),
                                  thicknessUnit: GaugeSizeUnit.factor,
                                ),
                                annotations: [
                                  GaugeAnnotation(
                                    widget: Row(
                                      children: [
                                        SizedBox(
                                            width: ScreenSize
                                                    .horizontalBlockSize! *
                                                7.5),
                                        Text('${value.round().toString()}%',
                                            style: GoogleFonts.poppins(
                                              fontSize: ScreenSize.pSize_15(),
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                                pointers: <GaugePointer>[
                                  RangePointer(
                                    value: value,
                                    width: 0.17,
                                    enableDragging: true,
                                    cornerStyle: CornerStyle.bothCurve,
                                    pointerOffset: 0.01,
                                    color: Color(0xFFD88DFA),
                                    sizeUnit: GaugeSizeUnit.factor,
                                  ),
                                ],
                              ),
                            ]),
                      ),
                      SizedBox(width: ScreenSize.pSize_8()),
                      Text(result,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenSize.pSize_13())),
                    ],
                  ),
                  SizedBox(height: ScreenSize.pSize_6()),
                ],
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.pSize_17(),
            top: ScreenSize.pSize_18(),
            child: Row(
              children: [
                Container(
                  height: ScreenSize.pSize_25(),
                  width: ScreenSize.pSize_120(),
                  decoration: BoxDecoration(
                      color: colors, borderRadius: BorderRadius.circular(100)),
                  child: Center(
                      child: Text(
                    'Recommended',
                    style: GoogleFonts.poppins(
                        color: colors1,
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenSize.pSize_13()),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class circleController extends GetxController {
  getcircle(context, String text, color, tcolor) {
    return Row(
      children: [
        SizedBox(width: ScreenSize.pSize_23()),
        CircleAvatar(
          backgroundColor: Color(color),
          minRadius: ScreenSize.pSize_8(),
        ),
        SizedBox(width: ScreenSize.pSize_10()),
        Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: ScreenSize.pSize_10(),
              color: Color(tcolor),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class nameController extends GetxController {
  getname(context, String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: ScreenSize.pSize_13()),
    );
  }
}

class name2Controller extends GetxController {
  getname(context, String text) {
    return SizedBox(
      width: ScreenSize.pSize_100(),
      child: Text(
        overflow: TextOverflow.ellipsis,
        text,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600, fontSize: ScreenSize.pSize_13()),
      ),
    );
  }
}


class Loan {
  final colors,
      colors1,
      lonaamount,
      rate,
      Loanterm,
      monthly_pyment,
      fee,
      avrage,
      Average;

  Loan(
    this.colors,
    this.colors1,
    this.lonaamount,
    this.rate,
    this.Loanterm,
    this.monthly_pyment,
    this.fee,
    this.avrage,
    this.Average,
  );
}

final List<Loan> Loan_List = List.generate(
    colors.length,
    (index) => Loan(
          colors[index],
          colors1[index],
          lonaamount[index],
          rates[index],
          Loanterm[index],
          monthly_pyment[index],
          fee[index],
          avrage[index],
          Average[index],
        ));
List colors = [
  Color(0xFFD88DFA),
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Color(0xFFD88DFA),
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Color(0xFFD88DFA),
];
List colors1 = [
  Color(0xFF000000),
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Color(0xFF000000),
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Color(0xFF000000),
];
List lonaamount = [
  4566,
  6959,
  1000,
  5100,
  1500,
  5686,
  6486,
  1450,
  2654,
  1235,
  5665,
  4648
];
List rates = [
  12,
  11,
  10,
  9,
  8,
  7,
  6,
  5,
  4,
  3,
  2,
  1,
];
List Loanterm = [
  20,
  18,
  21,
  15,
  17,
  16,
  19,
  25,
  22,
  27,
  15,
  20,
];
List monthly_pyment = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
List fee = [
  55,
  43,
  37,
  18,
  20,
  40,
  34,
  32,
  35,
  41,
  19,
  50
];
List avrage = [
  """High probability of approval""",
  """Average probability of approval""",
  """Medium probability of approval""",
  """Low probability of approval""",
  """High probability of approval""",
  """Average probability of approval""",
  """Medium probability of approval""",
  """Low probability of approval""",
  """Average probability of approval""",
  """Medium probability of approval""",
  """Low probability of approval""",
  """High probability of approval""",
];
List<double> Average = [95, 75, 50, 28, 91, 75, 50, 28, 75, 45, 15, 96];
List hight = [
  ScreenSize.pSize_30(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_30(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_3(),
  ScreenSize.pSize_30(),
];


