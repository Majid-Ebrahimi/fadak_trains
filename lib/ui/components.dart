import 'package:flutter/material.dart';

import '../styles/size.dart';
import '../styles/text_styles.dart';
import '../util/colors.dart';

//Main textInput
//Base TextInput Style that have many parameters, you can change parameters you want and customize it
//TODO refactor all of parameters
Widget textInput({
  required BuildContext context,
  double? width,
  double? height,
  double? focusBorderSideWidth,
  double? enabledBorderSideWidth,
  double borderRadius = radiusSmall,
  Color focusBorderColor = CustomColor.neutral100,
  Color enabledBorderColor = CustomColor.neutral40,
  BorderStyle borderStyle = BorderStyle.solid,
  EdgeInsetsGeometry? contentPadding =
      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
  TextDirection hintTextDirection = TextDirection.rtl,
  TextStyle? hintTextStyle,
  TextAlign textAlign = TextAlign.right,
  required dynamic Function(String) onChanged,
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
  TextEditingController? controller,
  EdgeInsetsGeometry? margin,
  var maxLine,
}) {
  double borderSideWidth = 0.5;

  return Container(
    constraints: boxConstraints,
    width: double.infinity,
    margin: margin,
    height: sizeMXLarge,
    child: TextField(
      expands: expands,
      maxLines: maxLine,
      controller: controller,
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

//the
Widget rectangleButton({
  required Widget child,
  required void Function()? onPressed,
  EdgeInsetsGeometry? margin,
  double? width = double.infinity,
  double? height = sizeMXLarge,
  BoxConstraints? constraints,
  AlignmentGeometry? alignment = Alignment.center,
  Color? backgroundColor = CustomColor.gradientBlue,
  Color? foregroundColor = CustomColor.neutral000,
  Color? disableForegroundColor = CustomColor.neutral000,
  Color? disableBackgroundColor = CustomColor.neutral40,
  double elevation = 0.0,
  EdgeInsetsGeometry? padding = const EdgeInsets.symmetric(
    vertical: spacingSmall,
    horizontal: spacingLarge,
  ),
}) {
  TextStyle? textStyle = CustomTextStyle.bodyRegular();
  return Container(
    margin: margin,
    width: width,
    height: height,
    constraints: constraints,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
        ),
        alignment: alignment,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        disabledForegroundColor: disableForegroundColor,
        disabledBackgroundColor: disableBackgroundColor,
        elevation: elevation,
        textStyle: textStyle,
        padding: padding,
      ),
      child: child,
    ),
  );
}

//the title of TextInput
Widget textInputTitle(String text) {
  return Padding(
    padding: const EdgeInsets.only(
      top: spacingXMiddle,
      bottom: spacingXMiddle,
      left: spacingXMedium,
      right: spacingXMedium,
    ),
    child: Text(
      text,
      style: CustomTextStyle.buttonRegular(color: CustomColor.neutral70),
      textDirection: TextDirection.rtl,
    ),
  );
}
