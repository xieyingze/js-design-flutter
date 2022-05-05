import 'package:flutter/cupertino.dart';

import '../../index.dart';
import '../../lib/easyloading/index.dart';

class JSToast {
  static Future<void> showMessage({
    String? message,
    Widget? indicator,
    bool? dismissAuto,
    bool? dismissOnTap,
  }) async {
    return JSToast.show(
      message: message,
      dismissOnTap: false,
      dismissAuto: true,
    );
  }

  static Future<void> showSuccess({
    String? message,
    Widget? indicator,
    bool? dismissAuto,
    bool? dismissOnTap,
  }) async {
    return JSToast.show(
      message: message,
      indicator: JSIcon(
        data: Ionicons.checkmark_outline,
        size: 40,
        color: themeColors.white(),
      ),
      dismissOnTap: false,
      dismissAuto: true,
    );
  }

  static Future<void> showError({
    String? message,
    Widget? indicator,
    bool? dismissAuto,
    bool? dismissOnTap,
  }) async {
    return JSToast.show(
      message: message,
      indicator: JSIcon(
        data: Ionicons.close_outline,
        size: 40,
        color: themeColors.white(),
      ),
      dismissOnTap: false,
      dismissAuto: true,
    );
  }

  static Future<void> showWarming({
    String? message,
    Widget? indicator,
    bool? dismissAuto,
    bool? dismissOnTap,
  }) async {
    return JSToast.show(
      message: message,
      indicator: JSIcon(
        data: Ionicons.alert_sharp,
        size: 40,
        color: themeColors.white(),
      ),
      dismissOnTap: false,
      dismissAuto: true,
    );
  }

  static Future<void> show({
    String? message,
    Widget? indicator,
    bool? dismissAuto,
    bool? dismissOnTap,
  }) async {
    return EasyLoading.show(
      status: message ?? '',
      indicator: indicator != null
          ? Container(
              width: 90,
              height: 60,
              child: indicator,
            )
          : indicator,
      dismissAuto: dismissAuto ?? true,
      dismissOnTap: dismissOnTap ?? false,
    );
  }
}
