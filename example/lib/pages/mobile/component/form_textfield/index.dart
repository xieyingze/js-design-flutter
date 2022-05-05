import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/common/section/index.dart';
import 'package:js_design_kit_example/common/utils/alert.dart';
import 'package:js_design_kit_example/common/utils/clipboard.dart';
import 'package:js_design_kit_example/components/button/navbar_button.dart';

import '../../../../main.dart';
import 'controller.dart';

class MBTextFieldPage extends GetView<MBTextFieldController> {
  const MBTextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBTextFieldController());

    return BaseScaffold(
      title: 'SMTextField输入框',
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
        CommonSectionHeader(title: '一、基本使用'),
        // 实现
        Column(
          children: [
            JSTextField(
              '输入品种搜索',
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 8),
              backgroundColor: themeColors.card(),
              borderRadius: 4,
              fieldCallBack: (val) => {logger.d('$val')},
            ),
          ],
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo1Desc)},
          child: JSText(
            controller.demo1Desc,
            maxLines: 100,
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
        CommonSectionHeader(title: '二、定制TextField'),
        // 实现
        Column(
          children: [
            JSTextField(
              '输入品种搜索',
              clearDisplayMode: JSClearDisplayMode.always,
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 8),
              fontSize: fontSize16,
              backgroundColor: themeColors.card(),
              borderColor: themeColors.line(),
              prefixIcon: Icon(Ionicons.search_outline, size: 20, color: themeColors.fontMain()),
              suffixWidget: JSIcon(
                data: Ionicons.eye_outline,
                size: 24,
              ),
              borderRadius: 4,
              fieldCallBack: (val) => {logger.d('$val')},
            ),
          ],
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo2Desc)},
          child: JSText(
            controller.demo2Desc,
            maxLines: 100,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }
}
