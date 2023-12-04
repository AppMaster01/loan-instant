import 'package:flutter/material.dart';

class ScreenSize {
  static late MediaQueryData _mediaQuerydata;
  static late double screenWi;
  static late double screenHi;
  static double? horizontalBlockSize;
  static double? verticalBlockSize;

  static sizerInit(BuildContext context) {
    _mediaQuerydata = MediaQuery.of(context);
    screenWi = _mediaQuerydata.size.width;
    screenHi = _mediaQuerydata.size.height;
    horizontalBlockSize = screenWi / 100;
    verticalBlockSize = screenWi / 100;
  }

  static pSize_385() {
    return horizontalBlockSize! * 106.953; //385
  }

  static pSize_225() {
    return horizontalBlockSize! * 60; //385
  }

  static pSize_300() {
    return horizontalBlockSize! * 86; //300
  }

  static pSize_340() {
    return horizontalBlockSize! * 93; //300
  }

  static pSize_350() {
    return horizontalBlockSize! * 95; //300
  }

  static pSize_360() {
    return horizontalBlockSize! * 97; //300
  }

  static pSize_326() {
    return horizontalBlockSize! * 89; //300
  }

  static pSize_323() {
    return horizontalBlockSize! * 87; //300
  }

  static pSize_320() {
    return horizontalBlockSize! * 85; //300
  }

  static pSize_275() {
    return horizontalBlockSize! * 80; //250
  }

  static pSize_290() {
    return horizontalBlockSize! * 95; //250
  }

  static pSize_250() {
    return horizontalBlockSize! * 69.45; //250
  }

  static pSize_260() {
    return horizontalBlockSize! * 70; //250
  }

  static pSize_200() {
    return horizontalBlockSize! * 57; //200
  }

  static pSize_190() {
    return horizontalBlockSize! * 54; //150
  }

  static pSize_180() {
    return horizontalBlockSize! * 51.10; //150
  }

  static pSize_170() {
    return horizontalBlockSize! * 47; //150
  }

  static pSize_160() {
    return horizontalBlockSize! * 45; //150
  }

  static pSize_150() {
    return horizontalBlockSize! * 43; //150
  }

  static pSize_145() {
    return horizontalBlockSize! * 40; //150
  }

  static pSize_140() {
    return horizontalBlockSize! * 38; //150
  }

  static pSize_130() {
    return horizontalBlockSize! * 35; //150
  }

  static pSize_120() {
    return horizontalBlockSize! * 33.344; //120
  }

  static pSize_110() {
    return horizontalBlockSize! * 30.562; //110
  }

  static pSize_100() {
    return horizontalBlockSize! * 27.78; //100
  }

  static pSize_90() {
    return horizontalBlockSize! * 25.008; //90
  }

  static pSize_82() {
    return horizontalBlockSize! * 22.4; //82
  }

  static pSize_80() {
    return horizontalBlockSize! * 20.514; //80
  }

  static pSize_75() {
    return horizontalBlockSize! * 20.85; //75
  }

  static pSize_70() {
    return horizontalBlockSize! * 19; //70
  }

  static pSize_60() {
    return horizontalBlockSize! * 16.672; //60
  }

  static pSize_55() {
    return horizontalBlockSize! * 15.281; //55
  }

  static pSize_50() {
    return horizontalBlockSize! * 13.89; //50
  }

  static pSize_48() {
    return horizontalBlockSize! * 13.38; //48
  }

  static pSize_45() {
    return horizontalBlockSize! * 12.51; //45
  }

  static pSize_40() {
    return horizontalBlockSize! * 10.257; //40
  }

  static pSize_38() {
    return horizontalBlockSize! * 10; //38
  }

  static pSize_34() {
    return horizontalBlockSize! * 9.5; //34
  }

  static pSize_30() {
    return horizontalBlockSize! * 8.336; //30
  }


  static pSize_28() {
    return horizontalBlockSize! * 7; //28
  }

  static pSize_25() {
    return horizontalBlockSize! * 6.945; //25
  }

  static pSize_24() {
    return horizontalBlockSize! * 6.690; //24
  }

  static pSize_23() {
    return horizontalBlockSize! * 6; //24
  }

  static pSize_20() {
    return horizontalBlockSize! * 5.560; //20
  }


  static pSize_18() {
    return horizontalBlockSize! * 5.0; //18
  }

  static pSize_17() {
    return horizontalBlockSize! * 4.75; //18
  }

  static pSize_16() {
    return horizontalBlockSize! * 4.450; //16
  }

  static pSize_15() {
    return horizontalBlockSize! * 4.170; //15
  }

  static pSize_14() {
    return horizontalBlockSize! * 3.900; //14
  }

  static pSize_11() {
    return horizontalBlockSize! * 3.06; //11
  }

  static pSize_12() {
    return horizontalBlockSize! * 3.360; //12
  }

  static pSize_13() {
    return horizontalBlockSize! * 3.637; //13
  }

  static pSize_10() {
    return horizontalBlockSize! * 2.800; //10
  }

  static pSize_8() {
    return horizontalBlockSize! * 2.245; //8
  }

  static pSize_6() {
    return horizontalBlockSize! * 1.685; //6
  }

  static pSize_4() {
    return horizontalBlockSize! * 1.120; //4
  }

  static pSize_3() {
    return horizontalBlockSize! * 0.8425; //6
  }
}
