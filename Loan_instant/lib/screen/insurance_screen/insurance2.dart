// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';

import '../../../../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../../../../Media_Qury/Media_Qury.dart';
import '../../ads/Google_Ads.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class insurance2 extends StatefulWidget {
  // final List<Loan> loanlist;
  // int indexs;
  const insurance2({Key? key,
    // required this.indexs, required this.loanlist
  }) : super(key: key);

  @override
  State<insurance2> createState() => _insurance2State();
}

class _insurance2State extends State<insurance2> {
  bool insurance2 = false;
   TextEditingController Address = TextEditingController();
   TextEditingController Apartment = TextEditingController();
   TextEditingController City = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context,  '/insurance2', transition),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,

          backgroundColor: const Color(0xFFF3F3F3),
          appBar: controllerapp.getbar((){
            backbuttoncontroller.showBackbuttonad(context,  '/insurance2', transition);

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
                      dotsCount: 4,
                      position: 1,
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
                        context, insurance2 ? "Value Can't Be Empty" : ''),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Address',
                      'asset/image/loan/Icons/address-icon.png',
                          () {},
                      Address,
                      TextInputType.name,
                      // form2 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter Apartment, Suite no.',
                      'asset/image/loan/Icons/address-icon.png',
                          () {},
                      Apartment,
                      TextInputType.name,
                      // form2 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_20()),
                    controllertextfiled.getfiled(
                      context,
                      'Enter City',
                      'asset/image/loan/Icons/address-icon.png',
                          () {},
                      City,
                      TextInputType.name,
                      // form2 ? Colors.red : Colors.transparent
                    ),
                    SizedBox(height: ScreenSize.pSize_50()),
                    controllerelevated.getelevated(() {
                      setState(() {
                        if (Address.text.isEmpty ||
                            Apartment.text.isEmpty ||
                            City.text.isEmpty) {
                          insurance2 = true;
                        } else if (Address.text.isNotEmpty ||
                            Apartment.text.isNotEmpty ||
                            City.text.isNotEmpty) {
                          insurance2 = false;
                          // Get.to(() => Fill_Up_Form3());
                          controller.showbuttonad(
                              context, '/insurance3', '/insurance2', transition, index,'');
                        }
                      });
                      // Get.to(() => insurance3(),transition: transition);

                    }, 'Next'),
                    SizedBox(height: ScreenSize.pSize_70()),
                  ],
                ),
              ),
              banner.getBN('/insurance2'),
            ],
          ),
        ),
      ),
    );
  }
}
