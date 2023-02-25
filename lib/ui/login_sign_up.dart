import 'package:fadak_trains/ui/components.dart';
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
      body: Container(
        decoration: const BoxDecoration(
          color: CustomColor.neutral000,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Components.toolbar(context: context, title: "ورود", hasLead: true),
            Expanded(
              child: ListView(
                children: [
                  const Center(child: Text("شماره خود را وارد کنید")),
                  Components.textInput(),
                  ElevatedButton(onPressed: (){}, child: const Text("تایید و دریافت کد")),
                  TextButton(onPressed: (){}, child: const Text("ورود با رمز موقت"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



