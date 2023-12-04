// ignore_for_file: camel_case_types, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/screen/Loan_Calculate_Screen/See_Loans_Screens.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../ads/Google_Ads.dart';
import '../../Controller_Page/My_Controller.dart';
import '../../Media_qury/Media_qury.dart';

class Get_Stard extends StatelessWidget {
  Get_Stard({Key? key}) : super(key: key);

  MyAppController myAppController = Get.put(MyAppController());

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
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            elevation: 3,
            content: Container(
              height: ScreenSize.pSize_140(),
              width: ScreenSize.pSize_290(),
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
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: HexagonalClipper(reverse: true),
                  child: Container(
                    height: ScreenSize.pSize_70(),
                    width: ScreenSize.pSize_150(),
                    color: const Color(0xFFF0D0FF),
                    child: Center(
                        child: Text(
                      "EXIT",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.pSize_25()),
                    )),
                  ),
                ),
                SizedBox(height: ScreenSize.pSize_110()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: ScreenSize.pSize_15()),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(false),
                      child: Container(
                        width: ScreenSize.pSize_110(),
                        height: ScreenSize.pSize_45(),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF0D0FF),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 1.2, color: const Color(0xFFA26ABC)),
                            boxShadow: const [
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
                    GestureDetector(
                      onTap: () => SystemNavigator.pop(),
                      child: Container(
                        width: ScreenSize.pSize_110(),
                        height: ScreenSize.pSize_45(),
                        decoration: BoxDecoration(
                            color: const Color(0xFFD88DFA),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 1.2, color: const Color(0xFFA26ABC)),
                            boxShadow: const [
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
                    SizedBox(width: ScreenSize.pSize_10()),
                  ],
                ),
                SizedBox(height: ScreenSize.pSize_20()),
              ],
            ),
          ),
          // Positioned(
          //   left: ScreenSize.horizontalBlockSize! * 18,
          //   top: ScreenSize.horizontalBlockSize! * 122,
          //   child:
          // ),
        ],
      ),
    );
  }

  // NativeAd? nativeAd;
  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
            centerTitle: true,
            title: Text('Instant Cash',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, color: Colors.black)),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  native.getNT('/Get_Stard', 'listTileMedium'),
                  SizedBox(height: ScreenSize.pSize_50()),
                  controllerelevated.getelevated(() {
                    // Get.to(() => Apply_for_loan_Screen());
                    controller.showbuttonad(context, '/Apply_for_loan_Screen',
                        '/Get_Stard', transition, index, '');
                  }, 'Get Started'),
                  SizedBox(height: ScreenSize.pSize_50()),
                  controllerelevated.getelevated(() {
                    // Get.to(() => Loan_Work());
                    controller.showbuttonad(context, '/Loan_Work', '/Get_Stard',
                        transition, index, '');
                  }, 'How Loan Works?'),
                  SizedBox(height: ScreenSize.pSize_50()),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Share.share('https://www.google.com/');
                        },
                        child: Container(
                          width: ScreenSize.horizontalBlockSize! * 20,
                          height: ScreenSize.horizontalBlockSize! * 23.5,
                          // color: Colors.black12,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: Center(
                                  child: Column(
                                    children: [
                                      controllercircle.getcircle(
                                          context,
                                          'Share',
                                          'asset/image/loan/Icons/share-icon (1).png'),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: ScreenSize.horizontalBlockSize! * 0,
                                left: ScreenSize.horizontalBlockSize! * 2.7,
                                child: Image(
                                    width:
                                        ScreenSize.horizontalBlockSize! * 14.6,
                                    image: const AssetImage(
                                        'asset/image/loan/Icons/circle/Ellipse1.png')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenSize.pSize_34()),
                      GestureDetector(
                        onTap: _shareURL,
                        child: Container(
                          width: ScreenSize.horizontalBlockSize! * 20,
                          height: ScreenSize.horizontalBlockSize! * 23.5,
                          // color: Colors.black12,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: Center(
                                  child: Column(
                                    children: [
                                      controllercircle.getcircle(
                                          context,
                                          'Rate',
                                          'asset/image/loan/Icons/rate-icon.png'),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: ScreenSize.horizontalBlockSize! * 2.7,
                                top: ScreenSize.horizontalBlockSize! * 0,
                                child: Image(
                                    width:
                                        ScreenSize.horizontalBlockSize! * 14.7,
                                    image: const AssetImage(
                                        'asset/image/loan/Icons/circle/Ellipse2.png')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenSize.pSize_34()),
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => In_App_Browser());
                          controller.showbuttonad(context, '/In_App_Browser',
                              '/Get_Stard', transition, index, '');
                        },
                        child: Container(
                          width: ScreenSize.horizontalBlockSize! * 20,
                          height: ScreenSize.horizontalBlockSize! * 23.5,
                          // color: Colors.black12,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: Center(
                                  child: Column(
                                    children: [
                                      controllercircle.getcircle(
                                          context,
                                          'Privacy',
                                          'asset/image/loan/Icons/privacy-icon (1).png'),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: ScreenSize.horizontalBlockSize! * 2.7,
                                top: ScreenSize.horizontalBlockSize! * 0.2,
                                child: Image(
                                    width:
                                        ScreenSize.horizontalBlockSize! * 14.7,
                                    image: const AssetImage(
                                        'asset/image/loan/Icons/circle/Ellipse3.png')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.pSize_80()),
                ]),
              ),
              banner.getBN('/Get_Stard'),
            ],
          )),
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

class MyPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height / 2),
      Offset(size.width * 1 / 3, size.height),
      Offset(size.width * 2 / 3, size.height),
      Offset(size.width, size.height / 2),
      Offset(size.width * 2 / 3, 0),
      Offset(size.width * 1 / 3, 0)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
