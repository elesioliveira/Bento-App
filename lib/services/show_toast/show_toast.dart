import 'package:bento_app/design_system/core/features/atoms/tokens/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  static void showToast({
    required String message,
    bool isError = false,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: isError ? Colors.red : Colors.greenAccent,
      textColor: isError ? Colors.white : AppColors.secondaryColor,
      fontSize: 14,
    );
  }
}
