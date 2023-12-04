// ignore_for_file: use_key_in_widget_constructors, camel_case_types, must_be_immutable, override_on_non_overriding_member, non_constant_identifier_names, annotate_overrides, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_instant/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:loan_instant/Controller_Page/widget_controller/recomannded_best_deal.dart';
import 'package:loan_instant/ads/Google_Ads.dart';

import '../../../../Controller_Page/widget_controller/Elevated_butoon.dart';
import '../../../../Media_Qury/Media_Qury.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../Emi_calculator/Lorem_Ipsum.dart';

int index = 0;

class See_Loans_Screens extends StatelessWidget {
  final List<Loan> loanlist;
  int indexs;

  See_Loans_Screens({Key? key, required this.indexs, required this.loanlist});

  var abc = Get.arguments;

  @override
  String emicalculate(int index) {
    double rate = (interestRatesliderval.round() + rates[index]) / 12 / 100;
    double Install = (loanamountsliderval.round() + lonaamount[index]) *
        rate *
        (pow(1 + rate, (loanTenuresliderval.round() + Loanterm[index])) /
            (pow(1 + rate, (loanTenuresliderval.round() + Loanterm[index])) -
                1));
    return Install.round().toString();
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/See_Loans_Screens', transition),
      child: Scaffold(
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/See_Loans_Screens', transition);
        }
            // Get.back();
            , 'Best Deals'),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: ScreenSize.horizontalBlockSize! * 176,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: lonaamount.length,
                    itemBuilder: (context, index) {
                      return controllerdata.getData(context, () {
                        // Get.to(
                        //     () =>
                        //         Fill_Up_Form1(indexs: index, loanlist: Loan_List),
                        //     arguments: Loan_List[index]);
                        controller.showbuttonad(context, '/Fill_Up_Form1',
                            '/See_Loans_Screens', transition, indexs, [
                          loanamountsliderval.round() + lonaamount[index],
                          interestRatesliderval.round() + rates[index],
                          loanTenuresliderval.round() + Loanterm[index],
                          emicalculate(index),
                          fee[index]
                        ]);
                      },
                          colors[index],
                          colors1[index],
                          (loanamountsliderval.round() + lonaamount[index]),
                          emicalculate(index),
                          (interestRatesliderval.round() + rates[index]),
                          (loanTenuresliderval.round() + Loanterm[index]),
                          avrage[index],
                          Average[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return index == 5
                          ? native.getNT('/See_Loans_Screens', 'listTileMedium')
                          : Container();
                    },
                  ),
                ),
              ],
            ),
            banner.getBN('/See_Loans_Screens'),
          ],
        ),

        // controllerdata.getData(context, 55322, 125, 12, 150,'Average probability of approval',Average1),
        // controllerdata.getData(context, 55322, 442, 24, 250,'Medium probability of approval',Average2),
        // controllerdata.getData(context, 15242, 125, 12, 150,'Low probability of approval',Average3),

        // SizedBox(height: ScreenSize.pSize_50()
        // ),

        // banner.getBN('/See_Loans_Screens'),
      ),
    );
  }
}
