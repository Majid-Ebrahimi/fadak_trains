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



//general Radius
//TODO Complete all Radius
const double radiusSmall = 4.0;
const double radiusMedium = 8.0;
const double radiusMiddle = 10.0;
const double radiusXMiddle = 12.0;
const double radiusLarge = 15.0;
const double radiusXLarge = 20.0;

//general size
//TODO Complete all sizes
const double sizeXXSmall = 1.0;
const double sizeSmall = 5.0;
const double sizeXMedium = 10.0;
const double sizeMiddle = 12.0;
const double sizeMLarge = 24.0;
const double sizeLarge = 25.0;
const double sizeMXLarge = 35.0;
const double sizeXLarge = 40.0;
const double sizeXMLarge = 45.0;
const double sizeXMMLarge = 48.0;
const double sizeMXXLarge = 60.0;
const double sizeXXLarge = 68.0;
const double sizeXXMLarge = 80.0;
const double sizeXXXXLarge = 200.0;



//general spacing
//TODO complete all dimens
const double spacingNegativeXLarge = -120.0;
const double spacingNegativeLarge = -90.0;
const double spacingXXXSmall = 2.0;
const double spacingXXSmall = 3.0;
const double spacingXSmall = 4.0;
const double spacingSmall = 5.0;
const double spacingMedium = 7.0;
const double spacingXMedium = 8.0;
const double spacingMiddle = 10.0;
const double spacingXMiddle = 13.0;
const double spacingXXMiddle = 15.0;
const double spacingXXXMiddle = 21.0;
const double spacingLarge = 25.0;

const double spacingSmLarge = 30.0;

const double spacingXLarge = 64.0;
