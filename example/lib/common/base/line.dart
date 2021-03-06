import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

////////////////////////////// 下划线(系统存在一个BaseLine) //////////////////////////////

class CommonLine extends StatelessWidget {
  final Color? color;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final bool? isLight;

  /*
   * 外部接口
   */
  const CommonLine({
    this.color,
    this.margin,
    this.width,
    this.height,
    this.isLight = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? themeColors.line(isLight: isLight ?? false),
      margin: margin,
      width: width,
      height: height,
    );
  }
}
