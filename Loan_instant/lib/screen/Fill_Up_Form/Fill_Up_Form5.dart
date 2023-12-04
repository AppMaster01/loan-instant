// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

import
'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/widget_controller/recomannded_best_deal.dart';

import '../../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../../../../Media_Qury/Media_Qury.dart';
import '../../ads/Google_Ads.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';

class Fill_Up_Form5 extends StatefulWidget {
  final List<Loan> loanlist;
  int indexs;

  Fill_Up_Form5(
      {Key? key,
      required this.indexs,
      required this.loanlist})
      : super(key: key);

  @override
  State<Fill_Up_Form5> createState() => _Fill_Up_Form5State();
}

class _Fill_Up_Form5State extends State<Fill_Up_Form5> {
  final Account = TextEditingController();
  final Salary = TextEditingController();
  bool form5 = false;

  var abc = Get.arguments;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Account.dispose();
    Salary.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: WillPopScope(
        onWillPop: () =>
            backbuttoncontroller.showBackbuttonad(context,  '/Fill_Up_Form4', transition),
        child: Scaffold(
          resizeToAvoidBottomInset: false,

          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar((){
            backbuttoncontroller.showBackbuttonad(context,  '/Fill_Up_Form4', transition);
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
                      dotsCount: 5,
                      position: 4,
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
                        context, form5 ? "Value Can't Be Empty" : ''),
                    controllerunited.getfiled(context, 'Enter Phone Number',
                        () {}, context, TextInputType.phone),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                        context,
                        'Enter Account Number',
                        'asset/image/loan/Icons/number-icon.png',
                        () {},
                        Account,
                        TextInputType.number,
                        // form5 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                        context,
                        'Enter Account Number',
                        'asset/image/loan/Icons/number-icon.png',
                        () {},
                        Salary,
                        TextInputType.number,
                        // form5 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (Account.text.isEmpty || Salary.text.isEmpty) {
                          form5 = true;
                        } else if (Account.text.isNotEmpty ||
                            Salary.text.isNotEmpty) {
                          form5 = false;
                          controller.showbuttonad(context, '/Loan_Summary_Screen', '/Fill_Up_Form5', transition,  widget.indexs, abc);
                        }
                      });
                      // Get.to(
                      //   () => Loan_Summary_Screen(
                      //     indexs:  widget.indexs,
                      //     loanlist: Loan_List,
                      //   ),
                      // );

                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/Fill_Up_Form5'),
            ],
          ),
        ),
      ),
    );
  }
}
