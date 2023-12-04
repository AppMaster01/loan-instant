import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../Media_qury/Media_qury.dart';

// int index = 0;
Transition transition = Transition.cupertino;

final controllerelevated = Get.put(elevatedController());
final controllercircle = Get.put(circleavtarController());
final controllerapp = Get.put(appbarController());
final controllerphoto = Get.put(photoController());
final controllerphoto2 = Get.put(photo2Controller());
final controllerFeature = Get.put(FeatureController());
final controllertextfiled = Get.put(textfildController());
final controllerunited = Get.put(UnitedController());
final controllercontain = Get.put(containController());
final controllertext = Get.put(textnController());
final controllertexts = Get.put(textController());
final controllerround = Get.put(circulerController());

class elevatedController extends GetxController {
  getelevated(ontap, name) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 66,
        height: ScreenSize.pSize_50(),
        decoration: BoxDecoration(
            color: Color.fromRGBO(216, 141, 250, 1),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(102, 46, 145, 100),
                  offset: Offset(-1.5, 2.1),
                  blurRadius: 0.1)
            ]),
        child: Center(
            child: Text(
          name,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: ScreenSize.pSize_18()),
        )),
      ),
    );
  }
}

class circleavtarController extends GetxController {
  getcircle(context, String name, String image) {
    ScreenSize.sizerInit(context);
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: ScreenSize.horizontalBlockSize! * 11.5,
              width: ScreenSize.horizontalBlockSize! * 11.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Center(
                  child: Image(
                      width: ScreenSize.pSize_30(), image: AssetImage(image))),
            ),
            SizedBox(height: ScreenSize.pSize_10()),
            Text(name,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, color: Colors.black)),
          ],
        ),
      ],
    );
  }
}

class appbarController extends GetxController {
  getbar(onTap, String name) {
    return AppBar(
      leading: GestureDetector(
          onTap: onTap,
          child: Center(
              child: Image(
            height: ScreenSize.pSize_20(),
            image: AssetImage('asset/image/loan/Icons/back-icon.png'),
            color: Colors.black,
          ))),
      elevation: 0,
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      centerTitle: true,
      title: Text(name,
          style: GoogleFonts.poppins(
              fontSize: ScreenSize.pSize_16(),
              fontWeight: FontWeight.w600,
              color: Colors.black)),
    );
  }
}

class photoController extends GetxController {
  getphoto(context, String photo, String discrip) {
    ScreenSize.sizerInit(context);
    return Row(
      children: [
        SizedBox(width: ScreenSize.pSize_28()),
        Image(
            height: ScreenSize.pSize_24(),
            color: Color(0xFFD88DFA),
            image: AssetImage(photo)),
        SizedBox(width: ScreenSize.pSize_10()),
        Text('|',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: ScreenSize.pSize_24(),
                color: Color.fromRGBO(216, 141, 250, 1))),
        SizedBox(width: ScreenSize.pSize_10()),
        Text(discrip,
            style: GoogleFonts.poppins(
                fontSize: ScreenSize.horizontalBlockSize! * 3.70,
                fontWeight: FontWeight.w400)),
      ],
    );
  }
}

class photo2Controller extends GetxController {
  getphoto(context, String photo, String discrip) {
    ScreenSize.sizerInit(context);
    return Row(
      children: [
        SizedBox(width: ScreenSize.pSize_28()),
        Image(
            height: ScreenSize.pSize_28(),
            color: Color(0xFFD88DFA),
            image: AssetImage(photo)),
        SizedBox(width: ScreenSize.pSize_10()),
        Text('|',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: ScreenSize.pSize_24(),
                color: Color.fromRGBO(216, 141, 250, 1))),
        SizedBox(width: ScreenSize.pSize_10()),
        Column(
          children: [
            Container(
              width: ScreenSize.horizontalBlockSize! * 68,
              height: ScreenSize.horizontalBlockSize! * 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(discrip,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: ScreenSize.pSize_13(),
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FeatureController extends GetxController {
  getFeature(context, String photo, String line, String discrip, color) {
    ScreenSize.sizerInit(context);
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: ScreenSize.pSize_15()),
            Image(
                height: ScreenSize.pSize_25(),
                color: color,
                image: AssetImage(photo)),
            SizedBox(width: ScreenSize.pSize_15()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(line,
                    style: GoogleFonts.poppins(
                        fontSize: ScreenSize.pSize_18(),
                        fontWeight: FontWeight.w600)),
                SizedBox(height: ScreenSize.pSize_6()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 70,
                  height: ScreenSize.horizontalBlockSize! * 25,
                  // color: Colors.black12,
                  child: Text(discrip,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          fontSize: ScreenSize.horizontalBlockSize! * 3.1,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class textfildController extends GetxController {
  getfiled(
    context,
    String text,
    String photo,
    onchange,
    _controller,
    type,
  ) {
    ScreenSize.sizerInit(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 14,
            width: ScreenSize.horizontalBlockSize! * 92,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(80),
                // border: Border.all(color: colorchange),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(-0.4, 1),
                    blurRadius: 1,
                  )
                ]),
            child: TextField(
              controller: _controller,
              keyboardType: type,
              decoration: InputDecoration(
                hintText: text,
                hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF8B8B8B),
                    fontSize: ScreenSize.pSize_16()),
                contentPadding: EdgeInsetsDirectional.symmetric(
                    horizontal: ScreenSize.horizontalBlockSize! * 20,
                    vertical: ScreenSize.pSize_12()),
                // fillColor: Colors.transparent,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                // focusedErrorBorder: OutlineInputBorder(
                //     borderSide: BorderSide(color: Colors.transparent)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 15,
            width: ScreenSize.pSize_90(),
            decoration: BoxDecoration(
                image: DecorationImage(scale: 1.9, image: AssetImage(photo)),
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    topLeft: Radius.circular(100))),
          ),
        ),
      ],
    );
  }
}

class UnitedController extends GetxController {
  getfiled(context, onchange, _controller, error, type) {
    ScreenSize.sizerInit(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 14,
            width: ScreenSize.horizontalBlockSize! * 92,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(80),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(-0.4, 1),
                    blurRadius: 1,
                  )
                ]),
            child: IntlPhoneField(
              initialCountryCode: "IN",
              disableLengthCheck: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter Phone Number',
                hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF8B8B8B),
                    fontSize: ScreenSize.pSize_16()),
                fillColor: Colors.transparent,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8),
        //   child: Container(
        //     height: ScreenSize.horizontalBlockSize! * 14,
        //     width: ScreenSize.horizontalBlockSize! * 23,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(scale: 0.9, image: AssetImage(photo)),
        //         color: Colors.transparent,
        //         borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(100),
        //             topLeft: Radius.circular(100))),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text('+1',
        //             style: GoogleFonts.poppins(
        //                 fontWeight: FontWeight.w400,
        //                 color: Colors.black,
        //                 fontSize: ScreenSize.pSize_16())),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class containController extends GetxController {
  getelevated(context, ontap, String labal, String text) {
    ScreenSize.sizerInit(context);
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 23,
        width: ScreenSize.horizontalBlockSize! * 80,
        decoration: BoxDecoration(
            color: Color(0xFFF0D0FF),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1.2, color: Color(0xFFA26ABC)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFA26ABC),
                  offset: Offset(-2, 2),
                  blurRadius: 0.1),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(width: ScreenSize.horizontalBlockSize! * 10.7),
                Text(
                  labal,
                  style: GoogleFonts.poppins(
                      fontSize: ScreenSize.pSize_16(),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: ScreenSize.pSize_6()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(width: ScreenSize.pSize_30()),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: ScreenSize.pSize_28(),
                      fontWeight: FontWeight.w600),
                ),

                GestureDetector(
                  onTap: ontap,
                  child: Image(
                      width: ScreenSize.horizontalBlockSize! * 5.5,
                      image:
                          AssetImage('asset/image/loan/Icons/down-arrow.png')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class textnController extends GetxController {
  gettext(context, String text, weight, size) {
    ScreenSize.sizerInit(context);
    return Text(
      text,
      style: GoogleFonts.poppins(fontWeight: weight, fontSize: size),
    );
  }
}

class textController extends GetxController {
  getext(context, error) {
    ScreenSize.sizerInit(context);
    return Row(
      children: [
        SizedBox(width: ScreenSize.pSize_70()),
        Text(
          error,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: Colors.red,
              fontSize: ScreenSize.pSize_12()),
        ),
      ],
    );
  }
}

class circulerController extends GetxController {
  getcircle(context) {
    ScreenSize.sizerInit(context);
    return Container(
      height: ScreenSize.horizontalBlockSize! * 20,
      width: ScreenSize.horizontalBlockSize! * 17,
      // color: Colors.black12,
      child: Center(
        child: SfRadialGauge(
            animationDuration: 1800,
            enableLoadingAnimation: true,
            axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                startAngle: 270,
                endAngle: 270,
                radiusFactor: 0.9,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.0,
                  color: Color(0xFFF6E3FF),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
                pointers: <GaugePointer>[
                  RangePointer(
                    value: 90,
                    width: 0.12,
                    enableDragging: true,
                    cornerStyle: CornerStyle.bothCurve,
                    pointerOffset: 0.01,
                    color: Color(0xFFD88DFA),
                    sizeUnit: GaugeSizeUnit.factor,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
