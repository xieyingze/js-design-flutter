import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class DTHomeDetail extends GetView {
  DTHomeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      color: themeColors.card(),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.copy_sharp,
                size: 20,
                color: themeColors.main(),
              ),
              JSText(
                '请求头',
                margin: EdgeInsets.only(left: 8),
                fontSize: fontSize18,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 40),
            padding: EdgeInsets.all(8),
            width: JSScreen.getWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSText(
                  '--',
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: themeColors.background(),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // 请求参数
          Row(
            children: [
              Icon(
                Icons.copy_sharp,
                size: 20,
                color: themeColors.main(),
              ),
              JSText(
                '请求参数',
                margin: EdgeInsets.only(left: 8),
                fontSize: fontSize18,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 40),
            padding: EdgeInsets.all(8),
            width: JSScreen.getWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSText(
                  '--',
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: themeColors.background(),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // 响应头部
          Row(
            children: [
              Icon(
                Icons.copy_sharp,
                size: 20,
                color: themeColors.main(),
              ),
              JSText(
                '响应头部',
                margin: EdgeInsets.only(left: 8),
                fontSize: fontSize18,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 40),
            padding: EdgeInsets.all(8),
            width: JSScreen.getWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSText(
                  '--',
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: themeColors.background(),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // 响应body
          Row(
            children: [
              Icon(
                Icons.copy_sharp,
                size: 20,
                color: themeColors.main(),
              ),
              JSText(
                '响应体',
                margin: EdgeInsets.only(left: 8),
                fontSize: fontSize18,
                color: themeColors.fontMain(),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 40),
            padding: EdgeInsets.all(8),
            width: JSScreen.getWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSText(
                  '--',
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: themeColors.background(),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
