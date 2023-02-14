import 'package:fadak_trains/styles/text_styles.dart';
import 'package:fadak_trains/util/colors.dart';
import 'package:flutter/material.dart';

class LoginOTP1 extends StatefulWidget {
  const LoginOTP1({Key? key}) : super(key: key);

  @override
  State<LoginOTP1> createState() => _LoginOTP1State();
}

class _LoginOTP1State extends State<LoginOTP1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: loginSignupAppBar(context, "ورود"),
      body: Container(
        decoration: const BoxDecoration(
          color: CustomColor.neutral000,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            loginSignupToolBar(context, "ورود"),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget loginSignupAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    toolbarTextStyle: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
    leading: IconButton(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.shortestSide / 23.41,
          horizontal: MediaQuery.of(context).size.shortestSide / 27.41),
      icon: Icon(
        Icons.close,
        color: CustomColor.neutral40,
        size: MediaQuery.of(context).size.shortestSide / 13.18,
      ),
      onPressed: () {},
      splashRadius: 25.0,
    ),
    title: Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.longestSide / 19),
      child: Text(
        title,
        style: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
      ),
    ),
    centerTitle: true,
  );
}

Widget loginSignupToolBar(BuildContext context, String title) {
  return Container(
    margin: EdgeInsets.only(top:  MediaQuery.of(context).size.shortestSide * 0.077,),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.shortestSide * 0.0293),
          child: Material(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.white10,
            child: IconButton(
              onPressed: () {},
              splashRadius: MediaQuery.of(context).size.shortestSide * 0.06,
              icon: Icon(
                Icons.close,
                color: CustomColor.neutral40,
                size: MediaQuery.of(context).size.shortestSide * 0.0615,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0,right: 175.0),
          child:
          Text(
            title,
            style: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
          ),
        ),
      ],
    ),
  );
}
