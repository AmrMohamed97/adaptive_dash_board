import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle styleRegular16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color: Color(0xff064061),
  );
  static const TextStyle styleMedium16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Color(0xff064061),
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xff064061),
  );
  static const TextStyle styleBold16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Color(0xff4EB7F2),
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xff064061),
  );
  static const TextStyle styleMedium20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFFFF),
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xff4EB7F2),
  );
  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xff4EB7F2),
  );
  static const TextStyle styleRegular12 = TextStyle(
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
  );

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

    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 600;
    }
    return width / 900;
  }
}
