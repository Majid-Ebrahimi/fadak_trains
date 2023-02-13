import 'package:flutter/cupertino.dart';

class CustomColor {
  //primary Colors...
  static const primary10 = Color(0xffE5F1F9);
  static const primary20 = Color(0xffDDECF7);
  static const primary30 = Color(0xffCDE3F4);
  static const primary40 = Color(0xffBEDCF0);
  static const primary50 = Color(0xffAED4ED);
  static const primary60 = Color(0xffA0CDEA);
  static const primary70 = Color(0xff90C6E7);
  static const primary80 = Color(0xff80C0E5);
  static const primary90 = Color(0xff71B9E2);
  static const primary100 = Color(0xff61B2DD);
  ///////////////////////////////////////////////

  //Secondary
  static const secondary10 = Color(0xffF7F1DD);
  static const secondary20 = Color(0xffF4EDD3);
  static const secondary30 = Color(0xffF1E6C2);
  static const secondary40 = Color(0xffEEDEAF);
  static const secondary50 = Color(0xffEAD79D);
  static const secondary60 = Color(0xffE4CF8C);
  static const secondary70 = Color(0xffDFC87B);
  static const secondary80 = Color(0xffDBC16B);
  static const secondary90 = Color(0xffD9BC59);
  static const secondary100 = Color(0xffD3B647);
  ///////////////////////////////////////////////

  //Gradient
  static const gradient = LinearGradient(
    colors: [Color(0xff004F8A), Color(0xff4DAFDE)],
    end: FractionalOffset(0.0, 0.0),
    begin: FractionalOffset(1.0, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );
  static const gradientBlue = Color(0xff0050B3);
  static const gradientDarkBlue = Color(0xff042C4A);
  ///////////////////////////////////////////////

  //Neutral
  static const neutral000 = Color(0xffFFFFFF);
  static const neutral00 = Color(0xffFFFBFE);
  static const neutral0 = Color(0xffF0F0F0);
  static const neutral10 = Color(0xffE4E4E4);
  static const neutral20 = Color(0xffC8C8C8);
  static const neutral30 = Color(0xffAEAAAE);
  static const neutral40 = Color(0xff939094);
  static const neutral50 = Color(0xff787579);
  static const neutral60 = Color(0xff605D62);
  static const neutral70 = Color(0xff484649);
  static const neutral80 = Color(0xff313033);
  static const neutral90 = Color(0xff1C1B1F);
  static const neutral100 = Color(0xff000000);
  ///////////////////////////////////////////////

  //Success
  static const success_1 = Color(0xff8DCD03);
  static const success_2 = Color(0xff5D9405);
  static const success_3 = Color(0xffD7F5B1);
  ///////////////////////////////////////////////

  //Warning
  static const warning_1 = Color(0xffFF8C00);
  static const warning_2 = Color(0xffD36F1A);
  static const warning_3 = Color(0xffFFDE99);
  ///////////////////////////////////////////////

  //Error
  static const error_1 = Color(0xffE00930);
  static const error_2 = Color(0xff87061E);
  static const error_3 = Color(0xffFFC7D1);
///////////////////////////////////////////////

}
