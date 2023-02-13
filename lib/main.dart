import 'package:fadak_trains/styles/text_styles.dart';
import 'package:fadak_trains/ui/login_sign_up.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: CustomTextStyle.display(),
        ),
      ),
      home: const LoginOTP1(),
    ));
