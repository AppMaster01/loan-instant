// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';

import '../Media_Qury/Media_Qury.dart';

class Play_Win extends StatefulWidget {
  const Play_Win({Key? key}) : super(key: key);

  @override
  State<Play_Win> createState() => _Play_WinState();
}

class _Play_WinState extends State<Play_Win> {
  double _process = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
                child: Image(
              height: ScreenSize.pSize_20(),
              image: AssetImage('asset/image/loan/Icons/back-icon.png'),
              color: Colors.black,
            ))),
        elevation: 0,
        backgroundColor: Color.fromRGBO(243, 243, 243, 1),
        centerTitle: true,
        title: Text('Play & Win',
            style: GoogleFonts.poppins(
                fontSize: ScreenSize.pSize_16(),
                fontWeight: FontWeight.w600,
                color: Colors.black)),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse(
              'https://www.deccanrummy.com/landing/2017/august/welcome-bonus/?utm_source=GOOGLE&utm_campaign=DR_SR_MainKeywords_Eng_OL&gclid=Cj0KCQjwlPWgBhDHARIsAH2xdNeJVjBjcG_z8uLnfsez0OF6papxpSMYUlEQ3VEY91udro8V19aOL0waAp4QEALw_wcB',
            )),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int process) {
              setState(() {
                _process = (process / 100);
              });
            },
          ),
          _process < 1
              ? Center(
                  child: Container(
                    height: ScreenSize.pSize_100(),
                    width: ScreenSize.pSize_100(),
                    child: Column(
                      children: [
                        Container(
                          height: ScreenSize.pSize_40(),
                          width: ScreenSize.pSize_40(),
                          child: CircularProgressIndicator(
                            strokeWidth: ScreenSize.pSize_4(),
                            value: _process,
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize.pSize_10(),
                        ),
                        Text('Loading...',
                            style: TextStyle(fontSize: ScreenSize.pSize_18())),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

List url = [
  'https://www.deccanrummy.com/landing/2017/august/welcome-bonus/?utm_source=GOOGLE&utm_campaign=DR_SR_MainKeywords_Eng_OL&gclid=Cj0KCQjwlPWgBhDHARIsAH2xdNeJVjBjcG_z8uLnfsez0OF6papxpSMYUlEQ3VEY91udro8V19aOL0waAp4QEALw_wcB',
  'https://www.deccanrummy.com/rummy-promotions/grand-rummy-powerplay.html'
];
