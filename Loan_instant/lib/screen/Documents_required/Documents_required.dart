// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Documents_required extends StatelessWidget {
  const Documents_required({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Documents_required', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar(
           (){
             backbuttoncontroller.showBackbuttonad(
                 context, '/Documents_required', transition);
           },
            'Documents required'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT('/Loan_Requirements', 'listTileMedium'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: ScreenSize.horizontalBlockSize! * 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(-0.5, 1.5),
                                color: Colors.black26,
                                blurRadius: 0.1)
                          ]),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                            context,
                            'asset/image/loan/Icons/identity-icon.png',
                            """Proof of identity such as Driving 
License,Voters ID, Passport, etc.""",
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/addressproof-icon.png',
                              """Proof of address such as 
Passport, Voters ID, Driving 
License, Utiity bills, etc."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/age-icon.png',
                              """Age proof"""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/incomeproof-icon.png',
                              """Proof of income"""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto(
                              context,
                              'asset/image/loan/Icons/letter-icon.png',
                              """Letter from the employer 
organisation"""),
                          SizedBox(height: ScreenSize.pSize_50()),
                          controllerelevated.getelevated(() {
                            // Get.to(() => Loan_Calculate_Screen());
                            controller.showbuttonad(context, '/Loan_Calculate_Screen', '/Documents_required', transition, index,'');
                          }, 'Fill Form'),
                          SizedBox(height: ScreenSize.pSize_20()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.pSize_80()),
                ],
              ),
            ),
            banner.getBN('/Documents_required')
          ],
        ),
      ),
    );
  }
}
