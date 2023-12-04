// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../Controller_Page/My_Controller.dart';
import '../Media_qury/Media_qury.dart';

class Splash_Screen extends StatelessWidget {
  Splash_Screen({Key? key}) : super(key: key);

  MyAppController myAppController = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Center(child: EasyLoader(image: AssetImage('asset/image/loan/Logo/logo.png'),iconSize: ScreenSize.pSize_190(),iconColor: Color(0xFFD88DFA),)),
                  Image(
                      height: ScreenSize.pSize_190(),
                      image: const AssetImage('asset/image/loan/Logo/logo.png')),
                  SizedBox(height: ScreenSize.pSize_70()),
                  Text('Instant Cash Loan App',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenSize.horizontalBlockSize! * 7.8)),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: ScreenSize.horizontalBlockSize! * 180),
              child: Center(
                  child: LoadingAnimationWidget.waveDots(
                      color: const Color(0xFFD88DFA), size: 60)),
            ),
          ],
        ),
      ),
    );
  }
}
