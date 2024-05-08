import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
 
abstract class AppStyles {
  static   TextStyle styleRegular16(context){ 
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color:const  Color(0xff064061),
  );
  }
  static   TextStyle styleMedium16(context){ 
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color:const  Color(0xff064061),
  );
  }
  static   TextStyle styleSemiBold16(context){ 
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color:const  Color(0xff064061),
  );
  }
  static   TextStyle styleBold16(context){ 
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color:const  Color(0xff4EB7F2),
  );
  }
  static   TextStyle styleSemiBold20(context){ 
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color:const  Color(0xff064061),
  );
  }
  static   TextStyle styleMedium20 (context){ 
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color:const  Color(0xFFFFFFFF),
  );
  }
  static   TextStyle styleSemiBold18 (context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: const Color(0xff4EB7F2),
  );
  }
  static   TextStyle styleRegular14 (context){
  return TextStyle(
    fontSize:getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color:const  Color(0xffAAAAAA),
  );
  }
  static   TextStyle styleSemiBold24 (context){
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color:const  Color(0xff4EB7F2),
  );
  }
  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }
}

//-------responsive fontSize
double getResponsiveFontSize(BuildContext context, {required int fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  double responsiveFontSize = fontSize * scaleFactor;
  responsiveFontSize.clamp(lowerLimit, upperLimit);
  return responsiveFontSize;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.mobileWidth) {
    return width / 600;
  } else if (width < SizeConfig.tabletWidth) {
    return width / 1000;
  }
  return width / 1900;
}
