import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:js_design_kit/js_design_kit.dart';

import '../../../models/api.dart';
import 'package:js_design_kit_example/common/index.dart';

class DebugNetworkExpand extends StatefulWidget {
  final DebugApiModel? model;
  final Function onTap;
  const DebugNetworkExpand({Key? key, this.model, required this.onTap}) : super(key: key);

  @override
  _DebugNetworkExpandState createState() => _DebugNetworkExpandState();
}

class _DebugNetworkExpandState extends State<DebugNetworkExpand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JSText(
            '${widget.model?.dateTime.toString()}',
            margin: EdgeInsets.only(bottom: 16),
            // text: MyDate.format('yyyy-MM-dd HH:mm:ss ssss', widget.model.dateTime),
            color: themeColors.fontNormal(),
            fontSize: fontSize12,
          ),
          // 请求头
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: widget.model?.reqHeader ?? ''));
                      JSToast.show(message: '复制成功');
                    },
                    child: JSIcon(
                      data: Ionicons.copy,
                      size: 20,
                    ),
                  ),
                  JSText(
                    '请求头部',
                    margin: EdgeInsets.only(left: 8),
                    fontSize: fontSize12,
                    fontWeight: FontWeight.w500,
                    color: themeColors.fontMain(),
                  ),
                ],
              ),
              JSContainer(
                onTap: () => widget.onTap(),
                width: 36,
                height: 20,
                alignment: Alignment.center,
                child: JSText(
                  '过滤',
                  color: themeColors.white(),
                  fontSize: fontSize12,
                ),
                decoration: BoxDecoration(
                  color: themeColors.fontNormal(),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
          JSText(
            widget.model?.reqHeader ?? '',
            margin: EdgeInsets.only(top: 8),
            fontSize: fontSize12,
            fontWeight: FontWeight.w300,
            color: themeColors.fontMain(),
          ),
          Container(
            height: 0.5,
            color: themeColors.line(),
            margin: EdgeInsets.symmetric(vertical: 16),
          ),
          // 请求参数
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: widget.model?.reqParams ?? ''));
                  JSToast.show(message: '复制成功');
                },
                child: JSIcon(
                  data: Ionicons.copy,
                  size: 20,
                ),
              ),
              JSText(
                '请求参数',
                margin: EdgeInsets.only(left: 8),
                fontSize: fontSize12,
                fontWeight: FontWeight.w500,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          JSText(
            widget.model?.reqParams ?? '',
            margin: EdgeInsets.only(top: 8),
            fontSize: fontSize12,
            fontWeight: FontWeight.w300,
            color: themeColors.fontMain(),
          ),
          Container(
            height: 0.5,
            color: themeColors.line(),
            margin: EdgeInsets.symmetric(vertical: 16),
          ),
          // 请求响应体
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: widget.model?.response));
                  JSToast.show(message: '复制成功');
                },
                child: JSIcon(
                  data: Ionicons.copy,
                  size: 20,
                ),
              ),
              JSText(
                '响应体',
                margin: EdgeInsets.only(left: 8),
                fontSize: fontSize12,
                fontWeight: FontWeight.w500,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          JSText(
            widget.model?.response ?? '',
            margin: EdgeInsets.only(top: 8),
            fontSize: fontSize12,
            fontWeight: FontWeight.w300,
            color: themeColors.fontMain(),
          ),
        ],
      ),
    );
  }
}
