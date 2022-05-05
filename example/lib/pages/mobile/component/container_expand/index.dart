import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/common/section/index.dart';
import 'package:js_design_kit_example/common/utils/alert.dart';
import 'package:js_design_kit_example/common/utils/clipboard.dart';
import 'package:js_design_kit_example/components/button/navbar_button.dart';

import 'controller.dart';

class MBExpandPage extends GetView<MBExpandController> {
  const MBExpandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBExpandController());

    return BaseScaffold(
      title: 'Expand容器',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: ListView(
        children: [
          _buildDemo1(),
          _buildDemo2(),
        ],
      ),
    );
  }

  Widget _buildDemo1() {
    return Column(
      children: [
        CommonSectionHeader(title: '一、搭配Container'),
        // 实现
        Container(
          height: 80,
          child: Row(
            children: [
              Container(
                width: 100,
                color: themeColors.red(),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: themeColors.green(),
                ),
              ),
            ],
          ),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo1Desc)},
          child: JSText(
            controller.demo1Desc,
            maxLines: 30,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }

  Widget _buildDemo2() {
    return Column(
      children: [
        CommonSectionHeader(title: '一、搭配Text'),
        // 实现
        Container(
          height: 80,
          child: Row(
            children: [
              Container(
                width: 100,
                color: themeColors.red(),
              ),
              Expanded(
                child: JSText(
                  '这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本这是文本',
                  padding: EdgeInsets.all(8),
                  backgroundColor: themeColors.card(),
                ),
              ),
            ],
          ),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo2Desc)},
          child: JSText(
            controller.demo2Desc,
            maxLines: 30,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }
}
