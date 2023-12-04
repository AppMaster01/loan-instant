// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:loan_instant/Controller_Page/widget_controller/Elevated_butoon.dart';
// import 'package:loan_instant/Controller_Page/widget_controller/recomannded_best_deal.dart';
// import '../Fill_Up_Form/Fill_Up_Form4.dart';
// import '../Loan_Calculate_Screen/See_Loans_Screens.dart';
// import '../Loan_Requirements/Loan_Requirements.dart';
// import 'Loan_Summary_Screen.dart';
//
// class Score extends StatelessWidget {
//   const Score({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // native.getNT('/Score', 'listTileMedium'),
//                 controllerelevated.getelevated(() {
//                   if(Email.text.isEmpty){
//                     Get.to(() => Loan_Requirements());
//                   }else if(Email.text.isNotEmpty){
//                     Get.to(()=> Loan_Summary_Screen(indexs: index, loanlist: Loan_List));
//                   }
//
//                 }, 'Apply Now'),
//               ],
//             ),
//           ),
//           // banner.getBN('/Score')
//         ],
//       ),
//     );
//   }
// }
