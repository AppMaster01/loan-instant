import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Media_Qury/Media_Qury.dart';

final controllcontainersmall = Get.put(smallcontainerController());

class smallcontainerController extends GetxController {
  int index = 0;
  getsmall(ontap, color1, String image, String text1, String text2,
      String btext, color2) {

    return Center(
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 90,
        height: ScreenSize.pSize_160(),
        decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 1.5),
                blurRadius: 2,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(width: ScreenSize.pSize_20()),
                Center(
                  child: Image(
                      height: ScreenSize.pSize_55(), image: AssetImage(image)),
                ),
                SizedBox(width: ScreenSize.pSize_18()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: ScreenSize.pSize_200(),
                      height: ScreenSize.pSize_80(),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            text1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontSize: ScreenSize.horizontalBlockSize! * 5.2,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            overflow: TextOverflow.fade,
                            text2,
                            style: GoogleFonts.poppins(
                                fontSize: ScreenSize.pSize_11(),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: ScreenSize.pSize_20()),
            GestureDetector(
              onTap: ontap,
              child: Container(
                width: ScreenSize.horizontalBlockSize! * 50,
                height: ScreenSize.pSize_40(),
                decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(-1.5, 1),
                          blurRadius: 0.1)
                    ]),
                child: Center(
                    child: Text(
                      btext,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenSize.pSize_16()),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}