// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

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

class Fill_Up_Form3 extends StatefulWidget {
  final List<Loan> loanlist;
  int indexs;

  Fill_Up_Form3({Key? key, required this.indexs, required this.loanlist})
      : super(key: key);

  @override
  State<Fill_Up_Form3> createState() => _Fill_Up_Form3State();
}

class _Fill_Up_Form3State extends State<Fill_Up_Form3> {
  bool form3 = false;

  TextEditingController State = TextEditingController();

  TextEditingController Country = TextEditingController();

  TextEditingController Zipcode = TextEditingController();

  var abc = Get.arguments;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    State.dispose();
    Country.dispose();
    Zipcode.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Fill_Up_Form3', transition),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar((){
            backbuttoncontroller.showBackbuttonad(context,  '/Fill_Up_Form3', transition);

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
                      position: 2,
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
                        context, form3 ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'Enter State/province',
                      'asset/image/loan/Icons/address-icon.png',
                      () {},
                      State,
                      TextInputType.name,
                      // form3 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Country',
                      'asset/image/loan/Icons/country-icon.png',
                      () {},
                      Country,
                      TextInputType.name,
                      // form3 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Zipcode',
                      'asset/image/loan/Icons/address-icon.png',
                      () {},
                      Zipcode,
                      TextInputType.number,
                      // form3 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (State.text.isEmpty ||
                            Country.text.isEmpty ||
                            Zipcode.text.isEmpty) {
                          form3 = true;
                        } else if (State.text.isNotEmpty ||
                            Country.text.isNotEmpty ||
                            Zipcode.text.isNotEmpty) {
                          form3 = false;
                          controller.showbuttonad(
                              context,
                              '/Fill_Up_Form4',
                              '/Fill_Up_Form3',
                              transition,
                              widget.indexs,
                              abc);
                        }

                      });
                      // Get.to(() => Fill_Up_Form4(
                      //       indexs: widget.indexs,
                      //       loanlist: Loan_List,
                      //     ));
                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Fill_Up_Form3'),
            ],
          ),
        ),
      ),
    );
  }
}
