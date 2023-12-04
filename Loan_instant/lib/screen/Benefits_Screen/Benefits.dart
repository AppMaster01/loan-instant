import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../../Media_Qury/Media_Qury.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Benefits extends StatelessWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);

    return WillPopScope(
      onWillPop: () {
        controller.showbuttonad(context, '/Apply_for_loan_Screen',
            '/Benefits', transition, index, '');
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar:  AppBar(
          leading: GestureDetector(
              onTap: (){
                controller.showbuttonad(context, '/Apply_for_loan_Screen',
                    '/Benefits', transition, index, '');
              },
              child: Center(
                  child: Image(
                    height: ScreenSize.pSize_20(),
                    image: const AssetImage('asset/image/loan/Icons/back-icon.png'),
                    color: Colors.black,
                  ))),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
          centerTitle: true,
          title: Text('Benefits',
              style: GoogleFonts.poppins(
                  fontSize: ScreenSize.pSize_16(),
                  fontWeight: FontWeight.w600, color: Colors.black)),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT('/Benefits', 'listTileMedium'),
                  SizedBox(height: ScreenSize.pSize_10()),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: ScreenSize.horizontalBlockSize! * 88,
                      height: ScreenSize.horizontalBlockSize! * 58,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(-1, 1),
                                color: Colors.black54,
                                blurRadius: 1.5)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  controllerphoto.getphoto(
                                    context,
                                    'asset/image/loan/Icons/timer-icon.png',
                                    'Lesser time and effort',
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.pSize_6()),
                          Column(
                            children: [
                              Row(
                                children: [
                                  controllerphoto.getphoto(
                                    context,
                                    'asset/image/loan/Icons/quick-icon.png',
                                    'Quick approval and disbursal',
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.pSize_6()),
                          Column(
                            children: [
                              Row(
                                children: [
                                  controllerphoto.getphoto(
                                    context,
                                    'asset/image/loan/Icons/security-icon.png',
                                    'Safety and security',
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.pSize_6()),
                          Column(
                            children: [
                              Row(
                                children: [
                                  controllerphoto.getphoto(
                                    context,
                                    'asset/image/loan/Icons/tracking-icon.png',
                                    'Transaction updates and tracking',
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.pSize_20()),
                  controllerelevated.getelevated(() {
                    // Get.to(() => Feature(), transition: transition);
                    controller.showbuttonad(
                        context, '/Feature', '/Benefits', transition, index, '');
                  }, 'Next'),
                  SizedBox(
                    height: ScreenSize.pSize_80(),
                  )
                ],
              ),
            ),
            banner.getBN('/Benefits')
          ],
        ),
      ),
    );
  }
}
