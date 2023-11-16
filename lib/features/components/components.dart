// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

// void showToast({
//   required String text,
//   required ToastStates state,
// }) =>
//     Fluttertoast.showToast(
//       msg: text,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 5,
//       backgroundColor: chooseToastColor(state),
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );

// // enum
// // ignore: constant_identifier_names
// enum ToastStates { SUCCESS, ERROR, WARNING }

// Color chooseToastColor(ToastStates state) {
//   Color color;

//   switch (state) {
//     case ToastStates.SUCCESS:
//       color = Colors.green;
//       break;
//     case ToastStates.ERROR:
//       color = Colors.red;
//       break;
//     case ToastStates.WARNING:
//       color = Colors.amber;
//       break;
//   }

//   return color;
// }

void printFullText(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
}
