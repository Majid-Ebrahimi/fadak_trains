import 'package:fadak_trains/util/colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {

  //TextStyles Method
  static TextStyle display({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 39.0,
    double height = 1.2,
    double letterSpacing = -1.0,
    Color color = CustomColor.neutral100,}
  )
  {
    TextStyle temp = TextStyle(
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      letterSpacing: letterSpacing,
      color: color,
    );
    return temp;
  }

  static TextStyle bodyBold({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 16.0,
    double height = 0.5,
    double letterSpacing = -1.0,
    Color color = CustomColor.neutral100,}
      )
  {
    TextStyle temp = TextStyle(
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      letterSpacing: letterSpacing,
      color: color,
    );
    return temp;
  }

  CustomTextStyle();
}


// class CustomStyle extends TextStyle {
//
//   @override
//   Color? get color => Colors.red;
//
//   void test(){
//
//   }
// }