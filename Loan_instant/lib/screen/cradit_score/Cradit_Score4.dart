// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';

import '../../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../ads/Google_Ads.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Fill_Up_Form/Fill_Up_Form4.dart';

class Credit_Score4 extends StatefulWidget {
  // final List<Loan> loanlist;
  // int indexs;

  const Credit_Score4({
    Key? key,
    // required this.indexs, required this.loanlist
  }) : super(key: key);

  @override
  State<Credit_Score4> createState() => _Credit_Score4State();
}

class _Credit_Score4State extends State<Credit_Score4> {
  SingingCharacter? _character = SingingCharacter.Male;
  bool Credit_Score = false;
  final TextEditingController date = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_Score4', transition),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar(
              (){
                backbuttoncontroller.showBackbuttonad(
                    context, '/Credit_Score4', transition);
              }
              // Get.back();

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
                      dotsCount: 4,
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
                        context, Credit_Score ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Date of Birth',
                      'asset/image/loan/Icons/calendar-icon.png',
                      () {},
                      date,
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
                      email,
                      TextInputType.emailAddress,
                      // form4 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if(date.text.isEmpty||email.text.isEmpty){
                          Credit_Score = true;
                        }else if(date.text.isNotEmpty||email.text.isNotEmpty){
                          Credit_Score = false;
                          controller.showbuttonad(context, '/Credit_Score_Approved', '/Credit_Score4', transition, '', '');
                        }
                      });
                      // setState(() {
                      //   if (date.text.isEmpty || email.text.isEmpty) {
                      //     Credit_Score = true;
                      //   } else if (date.text.isNotEmpty ||
                      //       email.text.isNotEmpty) {
                      //     Credit_Score = false;
                      //     controller.showbuttonad(
                      //         context,
                      //         '/Credit_Score_Approved',
                      //         '/Credit_Score4',
                      //         transition,
                      //         index,
                      //         '');
                      //   }
                      // });
                      // Get.to(() => Credit_Score_Approved(),transition: transition);
                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Credit_Score4'),
            ],
          ),
        ),
      ),
    );
  }
}
