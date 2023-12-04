// ignore_for_file: non_constant_identifier_names, constant_identifier_names, camel_case_types, must_be_immutable

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';

import '../../../../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../../../../Media_Qury/Media_Qury.dart';
import '../../ads/Google_Ads.dart';
import '../../../../Controller_Page/widget_controller/recomannded_best_deal.dart';

bool form4 = false;


enum SingingCharacter { Male, Female }

class Fill_Up_Form4 extends StatefulWidget {
  final List<Loan> loanlist;
  int indexs;

  Fill_Up_Form4({Key? key, required this.indexs, required this.loanlist})
      : super(key: key);

  @override
  State<Fill_Up_Form4> createState() => _Fill_Up_Form4State();
}

class _Fill_Up_Form4State extends State<Fill_Up_Form4> {
  SingingCharacter? _character = SingingCharacter.Male;
  TextEditingController Date = TextEditingController();
  TextEditingController Email = TextEditingController();
  List abc = Get.arguments;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Date.dispose();
    Email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(
              context, '/Fill_Up_Form4', transition),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar(
                  () {
                backbuttoncontroller.showBackbuttonad(
                    context, '/Fill_Up_Form4', transition);
              }
              ,
              'Fill Up Form'),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.pSize_30()),
                    DotsIndicator(
                      dotsCount: 5,
                      position: 3,
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
                        context, form4 ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Date of Birth',
                      'asset/image/loan/Icons/calendar-icon.png',
                          () {},
                      Date,
                      TextInputType.datetime,
                      // form4 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.pSize_15()),
                        Text(
                          'Select Gender',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenSize.pSize_16()),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.pSize_20()),
                        Transform.scale(
                          scale: 1.4,
                          child: Radio(
                              activeColor: const Color(0xFFD88DFA),
                              value: SingingCharacter.Male,
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              }),
                        ),
                        Text(
                          'Male',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenSize.pSize_16()),
                        ),
                        SizedBox(width: ScreenSize.pSize_50()),
                        Transform.scale(
                          scale: 1.4,
                          child: Radio(
                              activeColor: const Color(0xFFD88DFA),
                              value: SingingCharacter.Female,
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              }),
                        ),
                        Text(
                          'Female',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenSize.pSize_16()),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Email Address',
                      'asset/image/loan/Icons/email-icon.png',
                          () {},
                      Email,
                      TextInputType.emailAddress,
                      // form4 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (Date.text.isEmpty || Email.text.isEmpty) {
                          form4 = true;
                        } else if (Date.text.isNotEmpty ||
                            Email.text.isNotEmpty) {
                          form4 = false;
                          controller.showbuttonad(context, '/Fill_Up_Form5',
                              '/Fill_Up_Form4', transition, widget.indexs,
                              [abc, Email.text]);
                        }
                      });
                      // Get.to(() => Fill_Up_Form5(
                      //        indexs:  widget.indexs, loanlist: Loan_List,
                      //     ));
                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Fill_Up_Form4'),
            ],
          ),
        ),
      ),
    );
  }
}
