//  //-------responsive fontSize
//   import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/utils/size_config.dart';

// double getResponsiveFontSize(BuildContext context, {required int fontSize}) {
//     double scaleFactor = getScaleFactor(context);
//     double lowerLimit = fontSize * 0.8;
//     double upperLimit = fontSize * 1.2;
//     double responsiveFontSize = fontSize * scaleFactor;
//     responsiveFontSize.clamp(lowerLimit, upperLimit);
//     return responsiveFontSize;
//   }

//   double getScaleFactor(BuildContext context) {
//     double width = MediaQuery.sizeOf(context).width;

//     if (width < SizeConfig.mobileWidth) {
//       return width / 600;
//     } else if (width < SizeConfig.tabletWidth) {
//       return width / 1000;
//     }
//     return width / 1900;
//   }