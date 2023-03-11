import 'package:flutter/material.dart';

import '../styles/size.dart';
import '../styles/text_styles.dart';
import '../util/colors.dart';

//LoginSignUp toolbar
//implement a toolbar as a widget that you can change parameters you want and Customize it
Widget toolbar({
  required BuildContext context,
  required String title,
  IconData? lead,
  //TODO Create an Action
  IconData? action,
  bool hasAction = false,
  Color toolbarColor = CustomColor.neutral000,
  Color iconsColor = CustomColor.neutral40,
  double? toolbarHeight,
  double? toolbarWidth,
}) {
  //TODO Fix The Sizes
  double titleMargin = MediaQuery.of(context).size.width * 0.11;
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    //TODO
    titleMargin = MediaQuery.of(context).size.width * 0.16;
  }
  double iconBoxSize = MediaQuery.of(context).size.shortestSide * 0.1;
  double iconsSize = MediaQuery.of(context).size.shortestSide * 0.0615;
  return Container(
    margin: EdgeInsets.only(
      top: (MediaQuery.of(context).viewPadding.top),
    ),
    padding: EdgeInsets.only(
        top: (MediaQuery.of(context).size.shortestSide * 0.02),
        left: MediaQuery.of(context).size.width * 0.04),
    height: toolbarHeight,
    width: toolbarWidth,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //lead
        if (lead == null)
          Container(
            width: iconBoxSize,
            height: iconBoxSize,
            decoration: const BoxDecoration(shape: BoxShape.circle),
          )
        else
          Material(
            shape: const CircleBorder(),
            child: InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              child: Ink(
                width: iconBoxSize,
                height: iconBoxSize,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  lead,
                  color: iconsColor,
                  size: iconsSize,
                ),
              ),
            ),
          ),
        /////////////////////////////////////////

        //Title
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            left: titleMargin,
            top: MediaQuery.of(context).size.shortestSide * 0.01,
          ),
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.033,
          child: Text(
            title,
            style: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
          ),
        ),
      ],
    ),
  );
}

//Main textInput
//Base TextInput Style that have many parameters, you can change parameters you want and customize it
Widget textInput({
  required BuildContext context,
  double? width,
  double? height,
  double? focusBorderSideWidth,
  double? enabledBorderSideWidth,
  double borderRadius = 4.0,
  Color focusBorderColor = CustomColor.neutral100,
  Color enabledBorderColor = CustomColor.neutral40,
  BorderStyle borderStyle = BorderStyle.solid,
  EdgeInsetsGeometry? contentPadding =
      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
  TextDirection hintTextDirection = TextDirection.rtl,
  TextStyle? hintTextStyle,
  TextAlign textAlign = TextAlign.right,
  Function(String)? onChanged,
  TextInputType? textInputType = TextInputType.number,
  int? maxLength = 11,
  TextStyle? textStyle,
  String? errorText,
  String? counterText = '',
  String? hintText,
  InputBorder? errorBorder,
  bool expands = true,
  double? cursorHeight,
  BoxConstraints? boxConstraints,
  Color? suffixIconColor = CustomColor.neutral70,
  Icon? suffixIcon,
  EdgeInsetsGeometry? margin,
  var maxLine,
}) {
  double borderSideWidth = 0.5;
  double textInputHeight = 35;

  return Container(
    constraints: boxConstraints,
    // width: sizeConvertorWidth(context, width!),
    margin: margin,
    // height: sizeConvertorHeight(context, textInputHeight),
    child: TextField(
      expands: expands,
      maxLines: maxLine,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        errorText: errorText,
        errorBorder: errorBorder,
        // isDense: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: focusBorderColor,
              width: borderSideWidth,
              style: borderStyle),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        // contentPadding: textFieldContentPadding,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: enabledBorderColor,
              width: borderSideWidth,
              style: borderStyle),
        ),
        contentPadding: contentPadding,
        counterText: counterText,
        hintText: hintText,
        hintTextDirection: hintTextDirection,
        hintStyle: hintTextStyle,
      ),
      textAlign: textAlign,
      onChanged: onChanged,
      keyboardType: textInputType,
      maxLength: maxLength,
      cursorHeight: cursorHeight,
      style: textStyle,
      // clipBehavior: Clip.antiAliasWithSaveLayer,
    ),
  );
}



//the title of TextInput
Widget textInputTitle(String text) {
  return Padding(
    padding: EdgeInsets.only(top: spacingXXXMiddle, bottom: spacingXMiddle,left: spacingXMedium,right: spacingXMedium),
    child: Text(
      text,
      style: CustomTextStyle.buttonRegular(color: CustomColor.neutral70),
      textDirection: TextDirection.rtl,
    ),
  );
}
