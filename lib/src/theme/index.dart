import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../js_design_kit.dart';

enum JSThemeType {
  /// 浅色主题
  light,

  /// 深色主题
  dark
}

/*
 * 主题管理单例
 */
class JSThemeManager {
  static final JSThemeManager _singleton = JSThemeManager._();
  static JSThemeManager get instance => _singleton;
  JSThemeManager._();

  /// 当前主题
  JSThemeType theme = JSThemeType.light;

  late JSColors _colors;
  JSColors get colors => _colors;

  void init({JSColors? colors}) {
    _colors = colors ?? DefaultColor();

    //修改状态栏颜色
    SystemUiOverlayStyle style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

final themeColors = JSThemeManager.instance.colors;
