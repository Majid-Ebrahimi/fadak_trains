import 'package:fadak_trains/styles/size.dart';
import 'package:fadak_trains/styles/text_styles.dart';
import 'package:fadak_trains/ui/components.dart';
import 'package:fadak_trains/util/colors.dart';
import 'package:flutter/material.dart';

class LoginOTP1 extends StatefulWidget {
  const LoginOTP1({Key? key}) : super(key: key);

  @override
  State<LoginOTP1> createState() => _LoginOTP1State();
}

class _LoginOTP1State extends State<LoginOTP1> {
  String _value = '';
  bool isEnableButton = false;
  final textInputControllerPhoneNumber = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Conditions of enable or disable button
    textInputControllerPhoneNumber.addListener(() {
      setState(() {
        if (textInputControllerPhoneNumber.text.length >= 11 &&
            textInputControllerPhoneNumber.text.characters.first == '0') {
          isEnableButton = true;
        } else {
          isEnableButton = false;
        }
      });
    });
    /////////////////////////////////////////////////////////////////
  }

//-----------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginSignupAppBar(title: 'ورود'),
      body: Container(
        decoration: const BoxDecoration(
          color: CustomColor.neutral000,
        ),
        alignment: Alignment.center,
//its InkWell because when click on screen the keyboard will hide
        child: InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
/////////////////////////////////////////////////////////////////////
          child: Column(
            children: [
              // toolbar(
              //   context: context,
              //   title: "ورود",
              //   lead: Icons.close_rounded,
              // ),
              textInputTitle(
                "برای ادامه، شماره همراه خود را وارد کنید.",
              ),
              textInput(
                context: context,
                onChanged: (number) {
                  _value = number;
                  //TODO
                },
                controller: textInputControllerPhoneNumber,
                boxConstraints: const BoxConstraints(
                  minHeight: 25,
                  minWidth: 50,
                  maxHeight: 45,
                  maxWidth: 450,
                ),
                margin: const EdgeInsets.symmetric(
                    horizontal: spacingXLarge, vertical: spacingXMedium),
                hintText: 'شماره موبایل',
                hintTextStyle: CustomTextStyle.aaBold(
                  color: CustomColor.neutral30,
                  // height: null,
                ),
                textStyle: CustomTextStyle.aaBold(
                  color: CustomColor.neutral50,
                  fontSize: 16,
                  height: null,
                ),
              ),
              const Spacer(),
              rectangleButton(
                child: const Text("تایید و دریافت کد"),
                onPressed: isEnableButton ? () {} : null,
                margin: const EdgeInsets.symmetric(horizontal: spacingSmLarge),
                constraints: const BoxConstraints(
                  minHeight: 25,
                  minWidth: 65,
                  maxHeight: 45,
                  maxWidth: 600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "ورود با کلمه عبور",
                  style: CustomTextStyle.buttonRegular(
                    color: CustomColor.gradientBlue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar loginSignupAppBar({required String title}) {
    return AppBar(
      title: Text(
        title,
        style: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
      ),
      centerTitle: true,
      backgroundColor: CustomColor.neutral000,
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.close_rounded),
        color: CustomColor.neutral40,
        onPressed: () {},
        splashRadius: Material.defaultSplashRadius / 2,
      ),
    );
  }
}
