import 'package:flutter/material.dart';

enum JSLayoutType {
  /// 纵向布局
  column,

  /// 横向布局
  row,

  /// 换行
  wrap,

  /// 叠加
  stack,

  /// 列表
  list,
}

class JSLayout extends StatelessWidget {
  /// 外边距
  final EdgeInsets? margin;

  /// 内边距
  final EdgeInsets? padding;

  /// Display容器的类型
  final JSLayoutType type;

  /// 子组件
  final List<Widget> children;

  /// 主轴对齐方式
  final MainAxisAlignment? mainAxisAlignment;

  /// 副轴对齐方式
  final CrossAxisAlignment? crossAxisAlignment;

  /// Wrap 方向
  final Axis? wrapDirection;

  /// Wrap 对象方式
  final WrapAlignment? wrapAlignment;

  /// Wrap 方向
  final double? wrapSpacing;

  /// list 宽度
  final double? listWidth;

  /// list 高度
  final double? listHeight;

  final AlignmentDirectional? stackAlignment;

  const JSLayout({
    Key? key,
    this.margin,
    this.padding,
    required this.type,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.wrapDirection,
    this.wrapAlignment,
    this.wrapSpacing,
    this.stackAlignment,
    this.listWidth,
    this.listHeight,
  }) :
        // assert(type == SMDisplayType.column && (wrapDirection == null || wrapAlignment == null || wrapSpacing == null || stackAlignment == null)),
        // assert(type == SMDisplayType.row && (wrapDirection == null || wrapAlignment == null || wrapSpacing == null || stackAlignment == null)),
        // assert(type == SMDisplayType.wrap && (mainAxisAlignment != null || crossAxisAlignment != null || stackAlignment != null)),
        // assert(type == SMDisplayType.stack && (mainAxisAlignment != null || crossAxisAlignment != null || wrapDirection != null || wrapAlignment != null || wrapSpacing != null)),
        // assert(type == SMDisplayType.list && (mainAxisAlignment != null || crossAxisAlignment != null || wrapDirection != null || wrapAlignment != null || wrapSpacing != null || stackAlignment != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: listWidth,
      height: listHeight,
      margin: margin,
      padding: padding,
      child: _buildDisplayWidget(),
    );
  }

  Widget _buildDisplayWidget() {
    switch (type) {
      case JSLayoutType.column:
        return Column(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: children,
        );
      case JSLayoutType.row:
        return Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: children,
        );
      case JSLayoutType.wrap:
        return Wrap(
          direction: wrapDirection ?? Axis.horizontal,
          alignment: wrapAlignment ?? WrapAlignment.start,
          spacing: wrapSpacing ?? 0.0,
          children: children,
        );
      case JSLayoutType.stack:
        return Stack(
          alignment: stackAlignment ?? AlignmentDirectional.topStart,
          children: children,
        );
      case JSLayoutType.list:
        return ListView(
          padding: EdgeInsets.all(0),
          children: children,
        );
      default:
        return Column(
          children: children,
        );
    }
  }
}
