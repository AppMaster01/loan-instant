// ignore_for_file: non_constant_identifier_names, camel_case_types, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';

import '../../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../../Controller_Page/widget_controller/recomannded_best_deal.dart';
import '../../../Media_Qury/Media_Qury.dart';
import '../../ads/Google_Ads.dart';
import '../Loan_Calculate_Screen/See_Loans_Screens.dart';

ImagePicker picker = ImagePicker();

enum ImageSourceType { gallery, camera }

class Create_Profile extends StatefulWidget {
  final List<Loan> loanlist;

  int indexs;

  Create_Profile({Key? key, required this.indexs, required this.loanlist})
      : super(key: key);

  @override
  State<Create_Profile> createState() => _Create_ProfileState();
}

class _Create_ProfileState extends State<Create_Profile> {
  bool name = false;
  File? imageFile;
  TextEditingController fullname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController DoB = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Country = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    fullname.dispose();
    mobile.dispose();
    DoB.dispose();
    Address.dispose();
    Country.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return WillPopScope(
      onWillPop: ()=>
        controller.showbuttonad(
            context, '/Feature', '/Create_Profile', transition, index, ''),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context)
              .requestFocus(FocusNode(debugLabel: String.fromCharCode(20)));
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F3F3),
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                  onTap: () {
                    // Get.back();
                    controller.showbuttonad(context, '/Feature',
                        '/Create_Profile', transition, index, '');
                  },
                  child: Center(
                      child: Image(
                          height: ScreenSize.pSize_20(),
                          image: const AssetImage(
                              'asset/image/loan/Icons/back-icon.png'))))),
          body: SafeArea(
            child: Stack(
              children: [
                Center(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            imageFile == null
                                ? Container(
                                    height: ScreenSize.pSize_100(),
                                    width: ScreenSize.pSize_100(),
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(216, 141, 250, 1),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: const Image(
                                        image: AssetImage(
                                            'asset/image/loan/Icons/profile-icon.png')),
                                  )
                                : Container(
                                    height: ScreenSize.pSize_100(),
                                    width: ScreenSize.pSize_100(),
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(216, 141, 250, 1),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                          image: FileImage(imageFile!),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                            Positioned(
                              bottom: ScreenSize.pSize_8(),
                              right: 0,
                              child: Container(
                                height: ScreenSize.pSize_34(),
                                width: ScreenSize.pSize_34(),
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(216, 141, 250, 1),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Image(
                                      height: ScreenSize.pSize_17(),
                                      image: const AssetImage(
                                          'asset/image/loan/Icons/edit-icon.png')),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                top: ScreenSize.horizontalBlockSize! * 14,
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      imageFromGallery();
                                    },
                                    child: Container(
                                      height: ScreenSize.pSize_40(),
                                      width: ScreenSize.pSize_40(),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color(0xFFF3F3F3),
                                              width: 4)),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(height: ScreenSize.pSize_30()),
                        Text(
                          'Create your profile before you start',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenSize.horizontalBlockSize! * 5.1),
                        ),
                        SizedBox(height: ScreenSize.pSize_30()),
                        controllertexts.getext(
                            context, name ? "Value Can't Be Empty" : ''),
                        controllertextfiled.getfiled(
                          context,
                          'Full name',
                          'asset/image/loan/Icons/user-icon.png',
                          () {},
                          fullname,
                          TextInputType.name,
                          // name ? Colors.red : Colors.transparent
                        ),
                        SizedBox(height: ScreenSize.pSize_10()),
                        controllertextfiled.getfiled(
                          context,
                          'Mobile',
                          'asset/image/loan/Icons/mobile-icon.png',
                          () {},
                          mobile,
                          TextInputType.phone,
                          // name ? Colors.red : Colors.transparent
                        ),
                        SizedBox(height: ScreenSize.pSize_10()),
                        controllertextfiled.getfiled(
                          context,
                          'Date of Birth',
                          'asset/image/loan/Icons/calendar-icon.png',
                          () {},
                          DoB,
                          TextInputType.datetime,
                          // name ? Colors.red : Colors.transparent,
                        ),
                        SizedBox(height: ScreenSize.pSize_10()),
                        controllertextfiled.getfiled(
                          context,
                          'Address',
                          'asset/image/loan/Icons/address-icon.png',
                          () {},
                          Address,
                          TextInputType.streetAddress,
                          // name ? Colors.red : Colors.transparent,
                        ),
                        SizedBox(height: ScreenSize.pSize_10()),
                        controllertextfiled.getfiled(
                          context,
                          'Country',
                          'asset/image/loan/Icons/country-icon.png',
                          () {},
                          Country,
                          TextInputType.name,
                          // name ? Colors.red : Colors.transparent,
                        ),
                        SizedBox(height: ScreenSize.pSize_50()),
                        controllerelevated.getelevated(() {
                          setState(() {
                            if (fullname.text.isEmpty ||
                                mobile.text.isEmpty ||
                                DoB.text.isEmpty ||
                                Address.text.isEmpty ||
                                Country.text.isEmpty) {
                              name = true;
                            } else if (fullname.text.isNotEmpty ||
                                mobile.text.isNotEmpty ||
                                DoB.text.isNotEmpty ||
                                Address.text.isNotEmpty ||
                                Country.text.isNotEmpty) {
                              name = false;
                              controller.showbuttonad(
                                  context,
                                  '/Select_Category',
                                  '/Create_Profile',
                                  transition,
                                  widget.indexs,
                                  Loan_List);
                            }
                          });
                          // Get.to(() => Select_Category(
                          //       indexs: widget.indexs,
                          //       loanlist: Loan_List,
                          //     ),transition: transition);
                        }, 'Create'),
                        SizedBox(height: ScreenSize.pSize_120()),
                      ],
                    ),
                  ),
                ),
                banner.getBN('/Create_Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  imageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
        source: ImageSource.gallery,
        maxHeight: 480,
        maxWidth: 640,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.rear);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
// color: name ? Colors.red : Colors.transparent,
