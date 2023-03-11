import 'package:flutter/cupertino.dart';

const double _uiHeight = 750.0;
const double _uiWidth = 390.0;


//Methods that can convert Sizes to that we want
double sizeConvertorWidth (BuildContext context,double size){
  return (MediaQuery.of(context).size.width * size) / _uiWidth;
}

double sizeConvertorHeight (BuildContext context,double size){
  return (MediaQuery.of(context).size.height * size) / _uiHeight;
}

double sizeConvertorShortestSide (BuildContext context,double size){
  return (MediaQuery.of(context).size.shortestSide * size) / _uiWidth;
}

double sizeConvertorLongestSide (BuildContext context,double size){
  return (MediaQuery.of(context).size.longestSide * size) / _uiHeight;
}

//general spacing
//TODO complete all dimens
double spacingNegativeXLarge = -120;
double spacingNegativeLarge = -90;
double spacingXXXSmall = 2;
double spacingXXSmall = 3;
double spacingXSmall = 4;
double spacingSmall = 5;
double spacingMedium = 7;
double spacingXMedium = 8;
double spacingMiddle = 10;
double spacingXMiddle = 13;
double spacingXXMiddle = 15;
double spacingXXXMiddle = 21;
double spacingLarge = 25;
