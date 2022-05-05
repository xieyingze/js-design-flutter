import 'dart:io';

import 'package:flutter/material.dart';

import '../../js_design_kit.dart';

////////////////////////////// 基础容器 //////////////////////////////

class JSContainer extends StatefulWidget {
  /// 宽度
  final double? width;

  /// 高度
  final double? height;

  /// 背景色
  final Color? color;

  /// 外边距
  final EdgeInsets? margin;

  /// 内边距
  final EdgeInsets? padding;

  /// 对齐方式
  final Alignment? alignment;

  /// 子组件
  final Widget child;

  /// 装饰器
  final Decoration? decoration;

  /// 装饰器
  final Decoration? onHoverDecoration;

  /// 点击事件
  final Function onTap;

  const JSContainer({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.margin,
    this.padding,
    this.alignment,
    this.decoration,
    this.onHoverDecoration,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  _JSContainerState createState() => _JSContainerState();
}

class _JSContainerState extends State<JSContainer> {
  bool _isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid || Platform.isIOS)
        ? GestureDetector(
            onTap: () => widget.onTap(),
            child: Container(
              width: widget.width,
              height: widget.height,
              color: widget.decoration != null ? null : (widget.color ?? themeColors.card()),
              margin: widget.margin,
              padding: widget.padding,
              alignment: widget.alignment,
              child: widget.child,
              decoration: _isOnHover ? (widget.onHoverDecoration ?? widget.decoration) : widget.decoration,
            ),
          )
        : GestureDetector(
            onTap: () => widget.onTap(),
            child: MouseRegion(
              onHover: (event) => onHandleOnHoverEvent(),
              onExit: (event) => onHandleOnExitEvent(),
              child: Container(
                width: widget.width,
                height: widget.height,
                color: widget.decoration != null ? null : (widget.color ?? themeColors.card()),
                margin: widget.margin,
                padding: widget.padding,
                alignment: widget.alignment,
                child: widget.child,
                decoration: _isOnHover ? (widget.onHoverDecoration ?? widget.decoration) : widget.decoration,
              ),
            ),
          );
  }

  void onHandleOnHoverEvent() {
    // if (Platform.isIOS || Platform.isAndroid) return;
    setState(() {
      _isOnHover = true;
    });
  }

  void onHandleOnExitEvent() {
    // if (Platform.isIOS || Platform.isAndroid) return;
    setState(() {
      _isOnHover = false;
    });
  }
}
