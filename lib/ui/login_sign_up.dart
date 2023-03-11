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
  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              toolbar(
                context: context,
                title: "ورود",
                lead: Icons.close_rounded,
              ),
              textInputTitle(
                "برای ادامه، شماره همراه خود را وارد کنید.",
              ),
              textInput(
                context: context,
                onChanged: (number) {
                  _value = number;
                  //TODO
                  //_value.length == 11? _isButtonEnabled = true : _isButtonEnabled = false;
                },
                boxConstraints: const BoxConstraints(
                  minHeight: 20,
                  minWidth: 50,
                  maxHeight: 45,
                  maxWidth: 400,
                ),
                //TODO Fix Dimens
                margin: EdgeInsets.symmetric(
                    horizontal: 64, vertical: spacingXMedium),
                hintText: 'شماره موبایل',
                hintTextStyle: CustomTextStyle.aaBold(
                  color: CustomColor.neutral30,
                  height: null,
                ),
                textStyle: CustomTextStyle.aaBold(
                  color: CustomColor.neutral50,
                  fontSize: 16,
                  height: null,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _isButtonEnabled ? () {} : null,
                child: const Text("تایید و دریافت کد"),
              ),
              TextButton(
                  onPressed: () {}, child: const Text("ورود با رمز موقت")),
            ],
          ),
        ),
      ),
    );
  }

}
