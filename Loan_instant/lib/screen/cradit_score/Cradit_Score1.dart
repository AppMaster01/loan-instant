// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';

import '../../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../ads/Google_Ads.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Credit_Score1 extends StatefulWidget {
  // final List<Loan> loanlist;
  // int indexs;

  const Credit_Score1({
    Key? key,
    // required this.indexs, required this.loanlist
  }) : super(key: key);

  @override
  State<Credit_Score1> createState() => _Credit_Score1State();
}

class _Credit_Score1State extends State<Credit_Score1> {
  bool credit_score = false;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final middleName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(
          context, '/Credit_Score1', transition),
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
                    context, '/Credit_Score1', transition);
              }

          , 'Fill Up Form'),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.pSize_30()),
                    DotsIndicator(
                      dotsCount: 4,
                      position: 0,
                      decorator: const DotsDecorator(
                        color: Color.fromRGBO(216, 141, 250, 1),
                        size: Size.square(11),
                        activeSize: Size(80.0, 11),
                        activeColor: Color(0xFFD88DFA),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
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
                        context, credit_score ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'First Name',
                      'asset/image/loan/Icons/user-icon.png',
                      () {},
                      firstName,
                      TextInputType.name,
                      // error ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Last Name',
                      'asset/image/loan/Icons/user-icon.png',
                      () {},
                      lastName,
                      TextInputType.name,
                      // error ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Middle Name',
                      'asset/image/loan/Icons/user-icon.png',
                      () {},
                      middleName,
                      TextInputType.name,
                      // error ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (firstName.text.isEmpty ||
                            lastName.text.isEmpty ||
                            middleName.text.isEmpty) {
                          credit_score = true;
                        } else if (firstName.text.isNotEmpty ||
                            lastName.text.isNotEmpty ||
                            middleName.text.isNotEmpty) {
                          credit_score = false;
                          // Get.to(() => Fill_Up_Form2());
                          controller.showbuttonad(context, '/Credit_Score2',
                              '/Credit_Score1', transition,
                              index, '');
                        }
                      });
                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Credit_Score1'),
            ],
          ),
        ),
      ),
    );
  }
}
