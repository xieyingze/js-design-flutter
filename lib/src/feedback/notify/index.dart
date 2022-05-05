import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/src/index.dart';

class JSNotify {
  static Future<void> show({String? title, required String message}) async {
    Get.snackbar(
      title ?? '',
      message,
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 4,
      backgroundColor: themeColors.fontMain(),
      colorText: Colors.white,
    );
  }

  static Future<void> showSuccess({String? title, required String message}) async {
    Get.snackbar(
      title ?? '',
      message,
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 4,
      backgroundColor: themeColors.green(),
      colorText: Colors.white,
    );
  }

  static Future<void> showError({String? title, required String message}) async {
    Get.snackbar(
      title ?? '',
      message,
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 4,
      backgroundColor: themeColors.red(),
      colorText: Colors.white,
    );
  }

  static Future<void> showWarming({String? title, required String message}) async {
    Get.snackbar(
      title ?? '',
      message,
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 4,
      backgroundColor: themeColors.yellow(),
      colorText: Colors.white,
    );
  }
}
