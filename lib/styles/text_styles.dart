import 'package:fadak_trains/util/colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {

  //Constructor
  CustomTextStyle();
  ///////////////////////////////////////////////

  //TextStyles Methods
  //DISPLAY TextStyle
  static TextStyle display({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 39.0,
    double height = 1.2, //60px
    double letterSpacing = -1.0,
    Color color = CustomColor.neutral100,
  }) {
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
  ///////////////////////////////////////////////

  //HeadLine TextStyles...
  //HEADLINE LARGE TextStyle
  static TextStyle headlineLarge({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 31.0,
    double height = 0.94, //47px
    double letterSpacing = -2.5,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //HEADLINE MEDIUM TextStyle
  static TextStyle headlineMedium({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 25.0,
    double height = 0.8, //40px
    double letterSpacing = -1.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //HEADLINE SMALL TextStyle
  static TextStyle headlineSmall({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 20.0,
    double height = 0.7, //35px
    double letterSpacing = -1.0,
    Color color = CustomColor.neutral100,
  }) {
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
  ///////////////////////////////////////////////

  //Body TextStyles...
  //BODY REGULAR TextStyle
  static TextStyle bodyRegular({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 16.0,
    double height = 0.5, //25px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //BODY BOLD TextStyle
  static TextStyle bodyBold({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 16.0,
    double height = 0.5, //25px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  ///////////////////////////////////////////////

  //Button TextStyles...
  //BUTTON BOLD TextStyle
  static TextStyle buttonBold({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 13.0,
    double height = 0.42, //21px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //BUTTON REGULAR TextStyle
  static TextStyle buttonRegular({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 13.0,
    double height = 0.42, //21px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  ///////////////////////////////////////////////

  //AA TextStyles...
  //AA BOLD TextStyle
  static TextStyle aaBold({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 10.0,
    double height = 0.32, //16px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //AA REGULAR TextStyle
  static TextStyle aaRegular({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 10.0,
    double height = 0.32, //16px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  ///////////////////////////////////////////////

  //Caption TextStyles...
  //CAPTION BOLD TextStyle
  static TextStyle captionBold({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 9.0,
    double height = 0.32, //16px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //CAPTION REGULAR TextStyle
  static TextStyle captionRegular({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 9.0,
    double height = 0.32, //16px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  //CAPTION REGULAR 2 TextStyle
  static TextStyle caption2Regular({
    String fontFamily = 'Dana',
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 7.0,
    double height = 0.24, //12px
    double letterSpacing = 0.0,
    Color color = CustomColor.neutral100,
  }) {
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
  //
  ///////////////////////////////////////////////
}