import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/screen/Get_start/Get_Start.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Media_Qury/Media_Qury.dart';
import '../../in_app_web_view/view.dart';
import '../../screen/How_Loan_work/Loan_work.dart';
import '../../screen/Loan_Calculate_Screen/See_Loans_Screens.dart';
import '../../screen/Loan_Requirements/Loan_Requirements.dart';
import '../../screen/Loan_Summary_Screen/Loan_Summary_Screen.dart';
import '../widget_controller/recomannded_best_deal.dart';

final controllerdrawer = Get.put(drawerController());
final controllericon = Get.put(iconController());

class drawerController extends GetxController {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }

  Scaffold _buildExitDialog(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          AlertDialog(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            elevation: 3,
            content: Container(
              height: ScreenSize.pSize_140(),
              width: ScreenSize.pSize_250(),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          """Do you want to exit ?""",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenSize.pSize_18()),
                        ),
                        SizedBox(height: ScreenSize.pSize_10()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 28.5,
            top: ScreenSize.horizontalBlockSize! * 68,
            child: ClipPath(
              clipper: HexagonalClipper(reverse: true),
              child: Container(
                height: ScreenSize.pSize_70(),
                width: ScreenSize.pSize_150(),
                color: Color(0xFFF0D0FF),
                child: Center(
                    child: Text(
                  "EXIT",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.pSize_25()),
                )),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 18,
            top: ScreenSize.horizontalBlockSize! * 118,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(false),
                  child: Container(
                    width: ScreenSize.pSize_110(),
                    height: ScreenSize.pSize_45(),
                    decoration: BoxDecoration(
                        color: Color(0xFFF0D0FF),
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(width: 1.2, color: Color(0xFFA26ABC)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFA26ABC),
                              offset: Offset(-1, 1),
                              blurRadius: 0.1),
                        ]),
                    child: Center(
                      child: Text(
                        'No',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenSize.pSize_18()),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.pSize_20()),
                GestureDetector(
                  onTap: () => SystemNavigator.pop(),
                  child: Container(
                    width: ScreenSize.pSize_110(),
                    height: ScreenSize.pSize_45(),
                    decoration: BoxDecoration(
                        color: Color(0xFFD88DFA),
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(width: 1.2, color: Color(0xFFA26ABC)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFA26ABC),
                              offset: Offset(-1, 1),
                              blurRadius: 0.1),
                        ]),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenSize.pSize_18()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getelevated(context, String image, String name1, String name2) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          // SizedBox(height: ScreenSize.pSize_50()),
          Container(
            height: ScreenSize.horizontalBlockSize! * 75,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black45, offset: Offset(0, 1), blurRadius: 3)
            ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: ScreenSize.pSize_40()),
              Image(height: ScreenSize.pSize_100(), image: AssetImage(image)),
              SizedBox(height: ScreenSize.pSize_20()),
              Text(
                name1,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.pSize_24()),
              ),
              SizedBox(height: ScreenSize.pSize_10()),
              Text(
                name2,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.pSize_15()),
              )
            ]),
          ),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon
              .geticons('asset/image/loan/Icons/home-icon.png', 'Home', () {
            controller.showbuttonad(context, '/Get_Stard', '/Select_Category', transition, index, '');
            // Get.to(() => Get_Stard());
          }),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon
              .geticons('asset/image/loan/Icons/apply-icon.png', 'Apply', () {
            controller.showbuttonad(context, '/Loan_Requirements', '/Select_Category', transition, index,'');
            // Get.to(() => Loan_Requirements());
          }),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon
              .geticons('asset/image/loan/Icons/guide-icon.png', 'Guide', () {
            // Get.to(() => Loan_Work());
            controller.showbuttonad(
                context, '/Loan_Work', '/Select_Category', transition, index,'');
          }),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon.geticons(
              'asset/image/loan/Icons/status-icon.png', 'Loan Status', () {
            controller.showbuttonad(context, '/Loan_Summary_Screen',
                '/Select_Category', transition, index,'');
            // Get.to(() => Loan_Summary_Screen(
            //       indexs: index,
            //       loanlist: Loan_List,
            //     ));
          }),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon
              .geticons('asset/image/loan/Icons/share-icon.png', 'Share', () {
            Share.share('https://www.google.com/');
          }),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon.geticons(
              'asset/image/loan/Icons/rate-icon.png', 'Rate Us', _shareURL),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon.geticons(
              'asset/image/loan/Icons/privacy-icon.png', 'Privacy Policy', () {
            controller.showbuttonad(context, '/In_App_Browser',
                '/Select_Category', transition,index,'');
            // Get.to(() => In_App_Browser());
          }),
          SizedBox(height: ScreenSize.pSize_30()),
          controllericon
              .geticons('asset/image/loan/Icons/exit-icon.png', 'Exit', () {
            Get.back();
            _onWillPop(context);
          }),
          SizedBox(height: ScreenSize.pSize_30()),
        ],
      ),
    );
  }
}

class iconController extends GetxController {
  geticons(String image, String name, onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: ScreenSize.pSize_40()),
              Image(height: ScreenSize.pSize_28(), image: AssetImage(image)),
              SizedBox(width: ScreenSize.pSize_30()),
              Text(name,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenSize.pSize_16())),
            ],
          ),
        ),
      ],
    );
  }
}

_shareURL() async {
  const url = 'https://in.linkedin.com/company/infinitizi?trk=ppro_cprof';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
