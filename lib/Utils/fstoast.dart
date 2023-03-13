import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FSToast {
  // toast without context
  static showToast(String msg,
      {Toast toastLength = Toast.LENGTH_SHORT,
      ToastGravity gravity = ToastGravity.CENTER,
      int timeInSecForIosWeb = 1,
      Color backgroundColor = Colors.red,
      Color textColor = Colors.white,
      double fontSize = 16.0}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: timeInSecForIosWeb,
        textColor: textColor,
        fontSize: fontSize);
  }

  static Future<bool?> showToast2({
    required String msg,
    Toast? toastLength,
    int timeInSecForIosWeb = 1,
    double? fontSize,
    ToastGravity? gravity,
    Color? backgroundColor,
    Color? textColor,
    bool webShowClose = false,
    webBgColor = "linear-gradient(to right, #00b09b, #96c93d)",
    webPosition = "right",
  }) async {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength,
        timeInSecForIosWeb: timeInSecForIosWeb,
        fontSize: fontSize,
        gravity: gravity,
        backgroundColor: backgroundColor,
        textColor: textColor,
        webShowClose: webShowClose);
  }
}
