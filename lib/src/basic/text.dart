import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../js_design_kit.dart';
import '../basic/expandtext.dart';
import '../constant/fonts.dart';

/// 基础的文字组件
///
/// 布局规则：
///     在文本的右下角有更多或者收起按钮
///     当文本超过指定的[maxLines]时，剩余文本隐藏
///     点击更多，则显示全部文本
///
/// ```dart
///   SMExpandLabel(
///      text: '在文本的右下角有更多或者收起按钮',
///   )
///
///   SMExpandLabel(
///      text: '具备展开收起功能的文字面板，在文本的右下角有更多或者收起按钮',
///      maxLines: 2,
///      onExpanded: (value) {
///      },
///   )
///
/// ```
///
/// 相关文本组件如下:
///  * [JSExpandText], 折叠查看更多的文本组件
///
///

enum JSFontFamilyType {
  // 系统自带
  text,
  // din regular 适用于数字显示
  numRegular,
  // din medium 适用于数字显示
  numMedium,
  // din bold 适用于数字显示
  numBold,
}

class JSText extends StatelessWidget {
  /// 文字属性
  /// 文字
  final String text;

  /// 颜色
  final Color? color;

  /// 背景色
  final Color? backgroundColor;

  /// 字体大小
  final double? fontSize;

  /// 字体粗细
  final FontWeight? fontWeight;

  /// 字体对齐方式
  final TextAlign? textAlign;

  /// 字体样式
  final JSFontFamilyType? fontFamilyType;

  /// 容器属性
  /// 宽度
  final double? width;

  /// 高度
  final double? height;

  /// 最大行数
  final int? maxLines;

  /// 外边距
  final EdgeInsets? margin;

  /// 内边距
  final EdgeInsets? padding;

  /// 对齐方式
  final Alignment? alignment;

  /// 装饰器
  final BoxDecoration? decoration;

  /// 点击事件
  final List<Shadow>? shadows;

  /// 是否允许换行
  final bool? softWrap;

  /*
   * 外部接口
   */
  const JSText(
    this.text, {
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.fontFamilyType = JSFontFamilyType.text,
    this.width,
    this.height,
    this.maxLines = 10,
    this.margin,
    this.padding,
    this.softWrap,
    this.alignment,
    this.shadows,
    this.decoration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      color: backgroundColor,
      child: AutoSizeText(
        text,
        style: _getTextStyle(),
        textAlign: textAlign ?? TextAlign.left,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        softWrap: softWrap ?? true,
      ),
      alignment: alignment,
      decoration: decoration,
    );
  }

  /*
   * @description   根据字体类型获取
   * @param
   * @return
   * @author        jay
   * @time          3/3/22 12:29 PM
   */
  TextStyle _getTextStyle() {
    String fontFamily = "Helvetica";
    switch (fontFamilyType) {
      case JSFontFamilyType.numRegular:
        fontFamily = "DINRegular";
        break;
      case JSFontFamilyType.numMedium:
        fontFamily = "DINMedium";
        break;
      case JSFontFamilyType.numBold:
        fontFamily = "DINBold";
        break;
      default:
        fontFamily = "Helvetica";
        break;
    }
    return TextStyle(
      shadows: shadows ?? [],
      color: color ?? themeColors.fontMedium(),
      fontSize: fontSize ?? fontSize14,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: fontFamily,
      height: 1.5,
    );
  }
}
