import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/library/debug/models/exception.dart';

class DebugErrorCell extends StatefulWidget {
  final int? index;
  final DebugExceptionModel? model;
  const DebugErrorCell({
    Key? key,
    this.index,
    this.model,
  }) : super(key: key);

  @override
  _DebugErrorCellState createState() => _DebugErrorCellState();
}

class _DebugErrorCellState extends State<DebugErrorCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: ((widget.index ?? 0) % 2 == 1) ? themeColors.card() : themeColors.background(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JSText(
                '当前页面: ${widget.model?.page ?? ''}',
                fontSize: fontSize12,
                color: themeColors.fontMain(),
              ),
              JSText(
                (widget.model?.dateTime ?? '').toString(),
                fontSize: fontSize12,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: widget.model?.error ?? ''));
              JSToast.show(message: '复制成功');
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: JSIcon(
                data: Ionicons.copy,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: JSText(
              widget.model?.error ?? '',
              maxLines: 100,
              color: themeColors.main(),
              fontSize: 8,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
