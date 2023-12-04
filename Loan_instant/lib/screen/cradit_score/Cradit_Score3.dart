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

class Credit_Score3 extends StatefulWidget {
  // final List<Loan> loanlist;
  // int indexs;

  const Credit_Score3({Key? key,
    // required this.indexs, required this.loanlist
  })
      : super(key: key);

  @override
  State<Credit_Score3> createState() => _Credit_Score3State();
}

class _Credit_Score3State extends State<Credit_Score3> {
  bool Credit_Score = false;

  TextEditingController state = TextEditingController();

  TextEditingController country = TextEditingController();

  TextEditingController zipcode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(
          context, '/Credit_Score3', transition),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar((){
            backbuttoncontroller.showBackbuttonad(
                context,  '/Credit_Score3', transition);
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
                      position: 2,
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
                        context, Credit_Score ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'Enter State/province',
                      'asset/image/loan/Icons/address-icon.png',
                          () {},
                      state,
                      TextInputType.name,
                      // form3 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Country',
                      'asset/image/loan/Icons/country-icon.png',
                          () {},
                      country,
                      TextInputType.name,
                      // form3 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Zipcode',
                      'asset/image/loan/Icons/address-icon.png',
                          () {},
                      zipcode,
                      TextInputType.number,
                      // form3 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (state.text.isEmpty ||
                            country.text.isEmpty ||
                            zipcode.text.isEmpty) {
                          Credit_Score = true;
                        } else if (state.text.isNotEmpty ||
                            country.text.isNotEmpty ||
                            zipcode.text.isNotEmpty) {
                          Credit_Score = false;
                          // Get.to(() => Fill_Up_Form4());
                          controller.showbuttonad(context, '/Credit_Score4', '/Credit_Score3', transition, index,'');
                        }
                      });
                      // Get.to(() => Credit_Score4(),transition: transition);
                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Credit_Score3'),
            ],
          ),
        ),
      ),
    );
  }
}
