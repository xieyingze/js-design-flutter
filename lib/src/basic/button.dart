import 'package:flutter/material.dart';

import '../../js_design_kit.dart';
import '../basic/text.dart';

enum JSButtonType {
  normal,
  info,
  success,
  danger,
  warming,
}

class JSButton extends StatefulWidget {
  /// 按钮类型
  final JSButtonType? type;

  /// 按钮是否可以点击
  final bool? enable;

  /// 加载中颜色
  final Color? loadingColor;

  /// 加载中文字
  final String? loadingText;

  /// 是否加载中
  final bool? loading;

  /// 按钮的外边距
  final EdgeInsets? margin;

  /// 按钮的大小
  final Size? size;

  /// 按钮文字
  final String? title;

  /// 按钮文字颜色
  final Color? textColor;

  /// 按钮文字大小
  final double? fontSize;

  /// 按钮字重
  final FontWeight? fontWeight;

  /// 按钮普通颜色
  final Color? normalColor;

  /// 按钮高亮颜色
  final Color? highColor;

  /// 按钮圆角
  final double? borderRadius;

  /// 按钮边框颜色
  final Color? borderColor;

  /// icon
  final IconData? iconData;

  /// icon颜色
  final Color? iconColor;

  /// 按钮点击事件
  final Function onTap;

  JSButton({
    Key? key,
    this.type,
    this.enable,
    this.loading,
    this.loadingColor,
    this.loadingText,
    this.margin,
    this.size,
    this.title,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    this.normalColor,
    this.highColor,
    this.borderRadius,
    this.borderColor,
    this.iconData,
    this.iconColor,
    required this.onTap,
  }) : super(key: key);

  @override
  _JSButtonState createState() => _JSButtonState();
}

class _JSButtonState extends State<JSButton> {
  bool _isHighStatus = false;

  @override
  Widget build(BuildContext context) {
    JSButtonType type = widget.type ?? JSButtonType.normal;
    double fontSize = widget.fontSize ?? 16;
    bool enable = widget.enable ?? true;
    // 是否可以点击
    int enableAlpha = enable ? 255 : 180;

    bool loading = widget.loading ?? false;

    return Container(
      margin: widget.margin,
      width: widget.size?.width,
      height: widget.size?.height ?? 44,
      child: MaterialButton(
        splashColor: enable ? _getButtonBackgroundColor(type: type) : _getButtonBackgroundColor(type: type).withAlpha(enableAlpha),
        color: enable ? _getButtonBackgroundColor(type: type) : _getButtonBackgroundColor(type: type).withAlpha(enableAlpha),
        textColor: _getTextColor(type: type),
        elevation: 0,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 2),
        ),
        child: loading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(_getLoadingColor(type: type)),
                    ),
                  ),
                  widget.loadingText != null
                      ? JSText(
                          widget.loadingText ?? '',
                          margin: EdgeInsets.only(left: 8),
                          color: _getLoadingColor(type: type),
                        )
                      : Container(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.iconData != null
                      ? Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(
                            widget.iconData,
                            size: (fontSize + 4),
                            color: _getTextColor(type: type).withAlpha(enableAlpha),
                          ),
                        )
                      : Container(),
                  JSText(
                    widget.title ?? '',
                    color: _getTextColor(type: type).withAlpha(enableAlpha),
                    fontSize: widget.fontSize ?? 16,
                    fontWeight: widget.fontWeight ?? FontWeight.w500,
                  ),
                ],
              ),
        onPressed: () => onTap(),
      ),
      decoration: BoxDecoration(
        color: enable ? _getButtonBackgroundColor(type: type) : _getButtonBackgroundColor(type: type).withAlpha(enableAlpha),
        // borderRadius: BorderRadius.circular(widget.borderRadius ?? 2),
        border: Border.all(color: _getBorderColor(type: type), width: 0.5),
      ),
    );

    return GestureDetector(
      onLongPressStart: (event) => onLongPressStart(),
      onLongPressEnd: (event) => onLongPressEnd(),
      onTapDown: (event) => onTapDown(),
      onTapUp: (event) => onTapUp(),
      onTapCancel: () => onTapCancel(),
      onTap: () => onTap(),
      child: Container(
        margin: widget.margin,
        width: widget.size?.width,
        height: widget.size?.height ?? 44,
        child: loading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(_getLoadingColor(type: type)),
                    ),
                  ),
                  widget.loadingText != null
                      ? JSText(
                          widget.loadingText ?? '',
                          margin: EdgeInsets.only(left: 8),
                          color: _getLoadingColor(type: type),
                        )
                      : Container(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.iconData != null
                      ? Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(
                            widget.iconData,
                            size: (fontSize + 4),
                            color: _getTextColor(type: type).withAlpha(enableAlpha),
                          ),
                        )
                      : Container(),
                  JSText(
                    widget.title ?? '',
                    color: _getTextColor(type: type).withAlpha(enableAlpha),
                    fontSize: widget.fontSize ?? 16,
                    fontWeight: widget.fontWeight ?? FontWeight.w500,
                  ),
                ],
              ),
        decoration: BoxDecoration(
          color: enable ? _getButtonBackgroundColor(type: type) : _getButtonBackgroundColor(type: type).withAlpha(enableAlpha),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 2),
          border: Border.all(color: _getBorderColor(type: type), width: 0.5),
        ),
      ),
    );
  }

  void onTap() {
    if ((widget.enable ?? true) == false) return;
    widget.onTap();
  }

  void onTapDown() {
    if ((widget.enable ?? true) == false) return;
    setState(() {
      _isHighStatus = true;
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        _isHighStatus = false;
      });
    });
  }

  void onTapUp() {
    if ((widget.enable ?? true) == false) return;
    setState(() {
      _isHighStatus = false;
    });
  }

  void onTapCancel() {
    if ((widget.enable ?? true) == false) return;
    setState(() {
      _isHighStatus = false;
    });
    widget.onTap();
  }

  void onLongPressStart() {
    if ((widget.enable ?? true) == false) return;
    setState(() {
      _isHighStatus = true;
    });
  }

  void onLongPressEnd() {
    if ((widget.enable ?? true) == false) return;
    setState(() {
      _isHighStatus = false;
    });
  }

  /*
   * @description   获取按钮文字颜色
   * @param         
   * @return        
   * @author        jay    
   * @time          3/8/22 3:05 PM  
   */
  Color _getTextColor({required JSButtonType type}) {
    switch (type) {
      case JSButtonType.normal:
        // 白色底
        return widget.textColor ?? (_isHighStatus ? themeColors.fontMain() : themeColors.fontMain());
      default:
        return widget.textColor ?? (_isHighStatus ? themeColors.white(alpha: 0.8) : themeColors.white());
    }
  }

  /*
   * @description   获取按钮背景色
   * @param         
   * @return        
   * @author        jay    
   * @time          3/8/22 3:04 PM  
   */
  Color _getButtonBackgroundColor({required JSButtonType type}) {
    switch (type) {
      case JSButtonType.normal:
        // 普通
        return _isHighStatus ? (widget.highColor ?? themeColors.line()) : (widget.normalColor ?? themeColors.white());
      case JSButtonType.info:
        // 信息
        return _isHighStatus ? (widget.highColor ?? themeColors.main()) : (widget.normalColor ?? themeColors.main(alpha: 1));
      case JSButtonType.success:
        // 成功
        return _isHighStatus ? (widget.highColor ?? themeColors.green()) : (widget.normalColor ?? themeColors.green(alpha: 1));
      case JSButtonType.danger:
        // 危险
        return _isHighStatus ? (widget.highColor ?? themeColors.red()) : (widget.normalColor ?? themeColors.red(alpha: 1));
      case JSButtonType.warming:
        // 警告
        return _isHighStatus ? (widget.highColor ?? themeColors.yellow()) : (widget.normalColor ?? themeColors.yellow(alpha: 1));
      default:
        return widget.normalColor ?? (_isHighStatus ? themeColors.background() : themeColors.white());
    }
  }

  /*
   * @description   获取边框颜色
   * @param         
   * @return        
   * @author        jay    
   * @time          3/8/22 3:04 PM  
   */
  Color _getBorderColor({required JSButtonType type}) {
    switch (type) {
      case JSButtonType.normal:
        // 白色底
        return widget.borderColor ?? themeColors.line();
      default:
        return widget.borderColor ?? themeColors.clear();
    }
  }

  /*
   * @description   获取按钮文字颜色
   * @param
   * @return
   * @author        jay
   * @time          3/8/22 3:05 PM
   */
  Color _getLoadingColor({required JSButtonType type}) {
    switch (type) {
      case JSButtonType.normal:
        // 白色底
        return widget.loadingColor ?? themeColors.fontMain();
      default:
        return widget.loadingColor ?? themeColors.white();
    }
  }
}
