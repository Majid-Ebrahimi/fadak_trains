import 'package:flutter/material.dart';
import '../styles/text_styles.dart';
import '../util/colors.dart';

Widget toolbar(
    {required BuildContext context,
    required String title,
    bool hasLead = false,
    bool hasAction = false,
    Color toolbarColor = CustomColor.neutral000,
    Color iconsColor = CustomColor.neutral40,
    double? toolbarHeight,
    double? toolbarWidth}) {
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
        if (hasLead)
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
                  Icons.close,
                  color: iconsColor,
                  size: iconsSize,
                ),
              ),
            ),
          )
        else
          Container(
            width: iconBoxSize,
            height: iconBoxSize,
            decoration: const BoxDecoration(shape: BoxShape.circle),
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

Widget textInput({
  String? hintText,
  double? width,
  double? height,
  double? focusBorderSideWidth,
  double? enabledBorderSideWidth,
  double borderRadius = 4.0,
  Color focusBorderColor = CustomColor.neutral100,
  Color enabledBorderColor = CustomColor.neutral40,
  BorderStyle borderStyle = BorderStyle.solid,
  // EdgeInsetsGeometry contentPadding = EdgeInsets.only(right: 8.0, left: 128.0, top: 7.0, bottom: 6.0),
  TextDirection hintTextDirection = TextDirection.rtl,
  TextStyle? hintTextStyle,
  TextAlign textAlign = TextAlign.right,
  Function(String)? onChanged,
  TextInputType? textInputType,
  EdgeInsetsGeometry? contentPadding,
  double? maxLength,
  TextStyle? textStyle,
}
    ) {
  return SizedBox(
    width: width,
    height: height,
    child: TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: CustomColor.neutral100,
              /*width: 0.5,*/
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(4.0),
        ),
        // contentPadding: textFieldContentPadding,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: CustomColor.neutral40,
              /*width: 0.5,*/
              style: BorderStyle.solid),
        ),
        counterText: '',
        hintText: 'شماره موبایل',
        hintTextDirection: TextDirection.ltr,
        hintStyle: hintTextStyle,
      ),
      textAlign: TextAlign.right,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      maxLength: 11,
      style: CustomTextStyle.aaBold(color: CustomColor.neutral30),
    ),
  );
}
