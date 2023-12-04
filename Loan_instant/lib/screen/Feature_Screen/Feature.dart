// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../../Media_Qury/Media_Qury.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

class Feature extends StatelessWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return WillPopScope(
      onWillPop: () {
        controller.showbuttonad(context, '/Benefits',
            '/Feature', transition, index, '');
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar:AppBar(
          leading: GestureDetector(
              onTap: (){
                controller.showbuttonad(context, '/Benefits',
                    '/Feature', transition, index, '');
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
          title: Text('Feature',
              style: GoogleFonts.poppins(
                  fontSize: ScreenSize.pSize_16(),
                  fontWeight: FontWeight.w600, color: Colors.black)),
        ),
        body: Stack(
          children: [
            SizedBox(height: ScreenSize.pSize_10()),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT('/Feature', 'listTileMedium'),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(248, 248, 255, 1),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 4),
                                color: Colors.black26,
                                blurRadius: 2)
                          ]),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenSize.pSize_20()),
                          controllerFeature.getFeature(
                              context,
                              'asset/image/loan/Icons/point.png',
                              'IDENTIFY YOUR NEEDS',
                              """Understand the optimal amount of loan you need based on your requirements and your repayment capability Figure out why yoneed a Loan and how much you need.""",
                              const Color.fromRGBO(216, 141, 250, 1)),
                          SizedBox(height: ScreenSize.pSize_10()),
                          controllerFeature.getFeature(
                              context,
                              'asset/image/loan/Icons/point.png',
                              'CHECK YOUR ELIGIBILITY',
                              """Understand the amount of monthly EMI you can afford based on your current monthly income. Choose the loan amount for which you can easily pay EMI after considering your regular expenses.""",
                              const Color.fromRGBO(216, 141, 250, 1)),
                          SizedBox(height: ScreenSize.pSize_20()),
                          controllerFeature.getFeature(
                              context,
                              'asset/image/loan/Icons/point.png',
                              'DOCUMENTATION',
                              """Ensure all your latest documents are submitted with correct information, for a hassle-free process. For getting a loan you share the latest copies of all the required documents.""",
                              const Color.fromRGBO(216, 141, 250, 1)),
                          SizedBox(height: ScreenSize.pSize_10()),
                          controllerFeature.getFeature(
                              context,
                              'asset/image/loan/Icons/point.png',
                              'DISBURSAL AND REPAYMENT',
                             """Once you receive the disbursal. ensuring that your monthly EMI is paid on time is extremely important. Once all formalities are complete, you will receive disbursal in your account""",
                              const Color.fromRGBO(216, 141, 250, 1)),
                          SizedBox(height: ScreenSize.pSize_40()),
                          controllerelevated.getelevated(() {
                            // Get.to(
                            //     () => Create_Profile(
                            //           indexs: index,
                            //           loanlist: Loan_List,
                            //         ),
                            //     transition: transition);
                            controller.showbuttonad(context, '/Create_Profile',
                                '/Feature', transition,index,'');
                          }, 'Apply Now'),
                          SizedBox(height: ScreenSize.pSize_30()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.pSize_40()),
                ],
              ),
            ),
            banner.getBN('/Feature'),
          ],
        ),
      ),
    );
  }
}
