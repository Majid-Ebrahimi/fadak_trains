import 'package:fadak_trains/util/colors.dart';
import 'package:fadak_trains/styles/text_style.dart';
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
      appBar: loginSignupAppBar("ورود"),
      body: Container(
        decoration: const BoxDecoration(
          color: CustomColor.neutral000,
        ),
        alignment: Alignment.center,
        // color: Colors.white,
        child: Text("قطارهای  ستاره فدک",
            style: CustomTextStyle.display()),
      ),
    );
  }
}

PreferredSizeWidget loginSignupAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    leading: IconButton(
      icon: const Icon(
        Icons.close,
        color: CustomColor.neutral40,
      ),
      onPressed: () {},
      splashRadius: 25.0,
    ),
    title: Text(title, style: CustomTextStyle.bodyBold(color: CustomColor.neutral70)),
    centerTitle: true,
  );
}
