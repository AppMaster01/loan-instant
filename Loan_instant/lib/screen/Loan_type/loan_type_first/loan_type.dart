// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
import 'package:loan_instant/Media_Qury/Media_Qury.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../../../Controller_Page/small_container/container.dart';
import '../../../../future/future.dart';
import '../Loan_Details/model.dart';

GetNative getNative = GetNative();
GetBanner getBanner = GetBanner();

class Loan_type extends StatelessWidget {
  // final List<Detail> detailList;
  // int indexs;
  const Loan_type({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Select_Category', transition),
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: controllerapp.getbar(
            (){
              backbuttoncontroller.showBackbuttonad(context, '/Loan_type', transition);
            },
            'Loan Type'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: photos.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: ScreenSize.horizontalBlockSize! * 49,
                              child: controllcontainersmall.getsmall(() {
                                // Get.to(() => Loan_Details());
                                // controller.showbuttonad(context, '/Loan_Details',
                                //     '/Loan_type', transition,'',DetailList);
                                controller.showbuttonad(
                                    context,
                                    '/Loan_Details',
                                    '/Loan_type',
                                    transition,
                                    index,
                                    DetailList[index]);
                              },
                                  Color(Ccolor[index]),
                                  photos[index],
                                  text1[index],
                                  text2[index],
                                  'More',
                                  Color(bcolor[index])),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Container(
                                child: (index + 1) % 8 == 0
                                    ? FutureBuilder(
                                        builder: (context, snapshot) {
                                          return snapshot.connectionState ==
                                                  ConnectionState.done
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20)),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color:
                                                                  Colors.grey,
                                                              offset:
                                                                  Offset(1, 2),
                                                              blurRadius: 5)
                                                        ]),
                                                    height:
                                                        ScreenSize.pSize_250(),
                                                    // child: const Center(
                                                    //   child: Text("Hello"),
                                                    // ),
                                                    child: AdWidget(
                                                      ad: snapshot.data,
                                                      key:
                                                          Key(index.toString()),
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height:
                                                        ScreenSize.pSize_250(),
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    15)),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color:
                                                                  Colors.grey,
                                                              offset:
                                                                  Offset(1, 2),
                                                              blurRadius: 5)
                                                        ]),
                                                    child: const Center(
                                                        child:
                                                            CircularProgressIndicator()),
                                                  ),
                                                );
                                        },
                                        future: getNative.getData(),
                                      )
                                    : Container());
                          }),
                    ),
                  ),
                  SizedBox(height: ScreenSize.pSize_80()),
                ],
              ),
            ),
            banner.getBN('/Loan_type'),
          ],
        ),
      ),
    );
  }
}
