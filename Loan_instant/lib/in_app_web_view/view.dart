// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';

import '../Media_Qury/Media_Qury.dart';

class In_App_Browser extends StatefulWidget {
  const In_App_Browser({Key? key}) : super(key: key);

  @override
  State<In_App_Browser> createState() => _In_App_BrowserState();
}

class _In_App_BrowserState extends State<In_App_Browser> {
  double _process = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: controllerapp.getbar(() {
        Get.back();
      }, 'Youtube',),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse('youtube.com')),
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
