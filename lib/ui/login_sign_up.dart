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
            loginSignupToolBar(context: context, title: "ورود", hasLead: true),
          ],
        ),
      ),
    );
  }
}

// PreferredSizeWidget loginSignupAppBar(BuildContext context, String title) {
//   return AppBar(
//     backgroundColor: Colors.white,
//     elevation: 0.0,
//     toolbarTextStyle: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
//     leading: IconButton(
//       padding: EdgeInsets.symmetric(
//           vertical: MediaQuery.of(context).size.shortestSide / 23.41,
//           horizontal: MediaQuery.of(context).size.shortestSide / 27.41),
//       icon: Icon(
//         Icons.close,
//         color: CustomColor.neutral40,
//         size: MediaQuery.of(context).size.shortestSide / 13.18,
//       ),
//       onPressed: () {},
//       splashRadius: 25.0,
//     ),
//     title: Padding(
//       padding: EdgeInsets.symmetric(
//           vertical: MediaQuery.of(context).size.longestSide / 19),
//       child: Text(
//         title,
//         style: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
//       ),
//     ),
//     centerTitle: true,
//   );
// }

// Widget loginSignupToolBar(BuildContext context, String title) {
//   return Container(
//     margin: EdgeInsets.only(top:  MediaQuery.of(context).size.shortestSide * 0.077,),
//     child: SizedBox(
//       height: 100,
//       width: MediaQuery.of(context).size.width,
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Material(
//             // borderRadius: BorderRadius.circular(100),
//             color: Colors.black,
//             child: IconButton(
//               padding: EdgeInsets.all(10),
//               onPressed: () {},
//               splashRadius: MediaQuery.of(context).size.shortestSide * 0.06,
//               icon: Icon(
//                 Icons.close,
//                 color: CustomColor.neutral40,
//                 size: MediaQuery.of(context).size.shortestSide * 0.0615,
//               ),
//             ),
//           ),
//           Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(
//               left: MediaQuery.of(context).size.width * 0,
//               // right: MediaQuery.of(context).size.width * 0.164,
//             ),
//             width: MediaQuery.of(context).size.width * 0.641,
//             height: MediaQuery.of(context).size.height * 0.033,
//             color: Colors.lightGreen,
//             child: Text(
//               title,
//               style: CustomTextStyle.bodyBold(color: CustomColor.neutral70),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

Widget loginSignupToolBar({
  required BuildContext context,
  required String title,
  bool hasLead = false,
  bool hasAction = false,
  Color toolbarColor = CustomColor.neutral000,
  Color iconsColor = CustomColor.neutral40,
  double? toolbarHeight,
  double? toolbarWidth
}) {
  double iconBoxSize = MediaQuery.of(context).size.shortestSide * 0.1;
  double iconsSize = MediaQuery.of(context).size.shortestSide * 0.0615;
  return Container(
    margin: EdgeInsets.only(
      top: (MediaQuery.of(context).viewPadding.top),
    ),
    padding: EdgeInsets.only(
        top: (MediaQuery.of(context).size.shortestSide * 0.02),
        left: MediaQuery.of(context).size.width * 0.04
    ),
    height: toolbarHeight,
    width: toolbarWidth,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Lead
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
            left: MediaQuery.of(context).size.width * 0.11,
            top: MediaQuery.of(context).size.shortestSide * 0.01,
            // right: MediaQuery.of(context).size.width * 0.25,
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
