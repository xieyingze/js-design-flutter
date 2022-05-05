import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../../js_design_kit.dart';

class JSStyle {
  /*
   * 卡片风格
   */
  static final Decoration cardStyle = BoxDecoration(
    color: themeColors.card(),
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: themeColors.line(), width: 0.5),
  );

  /*
   * 小卡片风格
   */
  static final Decoration smallCardStyle = BoxDecoration(
    color: themeColors.card(),
    borderRadius: BorderRadius.circular(4),
    boxShadow: [BoxShadow(color: themeColors.shadow(), offset: const Offset(0, 2), blurRadius: 6)],
  );

  /*
   * 小卡片风格
   */
  static final Decoration contentCardStyle = BoxDecoration(
    color: themeColors.background().withAlpha(500),
    borderRadius: BorderRadius.circular(2),
  );

  static final Decoration panelStyle = BoxDecoration(
    color: themeColors.card(),
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
  );

  /*
   * 基础阴影
   */
  static final BoxShadow baseShadow = BoxShadow(
    offset: const Offset(1, 3),
    color: Colors.black.withAlpha(30),
    blurRadius: 5,
    spreadRadius: 5,
  );

  /*
   *  订单头部渐变色
   */
  static final BoxDecoration orderNormalHeader = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [JSColors.hexColor(0x2c4893), JSColors.hexColor(0x142351)],
    ),
    borderRadius: BorderRadius.circular(8.0),
  );
}
