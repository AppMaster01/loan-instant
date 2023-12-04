// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names, override_on_non_overriding_member

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';

import '../../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../ads/Google_Ads.dart';
import '../../../../Controller_Page/widget_controller/recomannded_best_deal.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';

class Fill_Up_Form1 extends StatefulWidget {
  final List<Loan> loanlist;
  int indexs;

  Fill_Up_Form1({Key? key, required this.indexs, required this.loanlist})
      : super(key: key);

  @override
  State<Fill_Up_Form1> createState() => _Fill_Up_Form1State();
}

class _Fill_Up_Form1State extends State<Fill_Up_Form1> {
  bool error = false;
  final FirstName = TextEditingController();
  final LastName = TextEditingController();
  final MiddleName = TextEditingController();
  var abc = Get.arguments;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FirstName.dispose();
    LastName.dispose();
    MiddleName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Fill_Up_Form1', transition),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar(() {
            backbuttoncontroller.showBackbuttonad(
                context, '/Fill_Up_Form1', transition);
          }
              // Get.back();
              , 'Fill Up Form'),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.pSize_30()),
                    DotsIndicator(
                      dotsCount: 5,
                      position: 0,
                      decorator: const DotsDecorator(
                        color: Color.fromRGBO(216, 141, 250, 1),
                        size: Size.square(11),
                        activeSize: Size(80.0, 11),
                        activeColor: Color(0xFFD88DFA),
                        activeShape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    SizedBox(height: ScreenSize.pSize_40()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.pSize_15()),
                        Text('Personal Details :',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.pSize_20())),
                      ],
                    ),
                    SizedBox(height: ScreenSize.pSize_28()),
                    controllertexts.getext(
                        context, error ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'First Name',
                      'asset/image/loan/Icons/user-icon.png',
                      () {},
                      FirstName,
                      TextInputType.name,
                      // error ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Last Name',
                      'asset/image/loan/Icons/user-icon.png',
                      () {},
                      LastName,
                      TextInputType.name,
                      // error ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Middle Name',
                      'asset/image/loan/Icons/user-icon.png',
                      () {},
                      MiddleName,
                      TextInputType.name,
                      // error ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (FirstName.text.isEmpty ||
                            LastName.text.isEmpty ||
                            MiddleName.text.isEmpty) {
                          error = true;
                        } else if (FirstName.text.isNotEmpty ||
                            LastName.text.isNotEmpty ||
                            MiddleName.text.isNotEmpty) {
                          error = false;
                          controller.showbuttonad(
                              context,
                              '/Fill_Up_Form2',
                              '/Fill_Up_Form1',
                              transition,
                              widget.indexs,
                              [abc, FirstName.text + LastName.text]);
                        }
                      });
                      // Get.to(() => Fill_Up_Form2(
                      //       indexs: widget.indexs,
                      //       loanlist: Loan_List,
                      //     ));
                      //
                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Fill_Up_Form1'),
            ],
          ),
        ),
      ),
    );
  }
}
