import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';

class CommonNavBarButton extends StatelessWidget {
  final Color? backgroundColor;
  final Function callBack;
  final IconData? icons;

  /// 按钮颜色
  final Color? iconColor;

  CommonNavBarButton({
    Key? key,
    this.backgroundColor,
    required this.callBack,
    this.icons,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBack(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: backgroundColor ?? themeColors.card(),
        child: Icon(
          this.icons ?? Icons.arrow_back_ios,
          size: 25,
          color: iconColor ?? themeColors.fontMedium(),
        ),
      ),
    );
  }
}
