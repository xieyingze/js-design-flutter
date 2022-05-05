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

class MBContainerPage extends GetView<MBContainerController> {
  const MBContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBContainerController());

    return BaseScaffold(
      title: 'Container容器',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: ListView(
        children: [
          _buildDemo1(),
          _buildDemo2(),
          _buildDemo3(),
          _buildDemo4(),
        ],
      ),
    );
  }

  Widget _buildDemo1() {
    return Column(
      children: [
        CommonSectionHeader(title: '一、Padding && Margin'),
        // 实现
        JSContainer(
          margin: EdgeInsets.all(32),
          padding: EdgeInsets.all(32),
          onTap: () => {Alert.alertTip('点击BaseContainer')},
          child: Container(
            width: 80,
            height: 80,
            color: themeColors.red(),
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
        CommonSectionHeader(title: '二、Border && BorderRadius'),
        // 实现
        JSContainer(
          margin: EdgeInsets.all(16),
          width: 120,
          height: 120,
          onTap: () => {Alert.alertTip('点击BaseContainer')},
          child: Icon(
            Ionicons.balloon_outline,
            size: 60,
          ),
          decoration: BoxDecoration(
            color: themeColors.card(),
            border: Border.all(color: themeColors.line(), width: 1),
            borderRadius: BorderRadius.circular(8),
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
        ),
      ],
    );
  }

  Widget _buildDemo3() {
    return Column(
      children: [
        CommonSectionHeader(title: '二、BoxShadow'),
        // 实现
        JSContainer(
          margin: EdgeInsets.all(16),
          width: 120,
          height: 120,
          onTap: () => {Alert.alertTip('点击BaseContainer')},
          child: Icon(
            Ionicons.balloon_outline,
            size: 60,
          ),
          decoration: BoxDecoration(
            color: themeColors.card(),
            boxShadow: [
              BoxShadow(color: themeColors.shadow(), blurRadius: 5, offset: Offset(0, 2)),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          onHoverDecoration: BoxDecoration(
            color: themeColors.card(),
            boxShadow: [BoxShadow(color: themeColors.darkShadow(), blurRadius: 10, offset: Offset(1, 5))],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo3Desc)},
          child: JSText(
            controller.demo3Desc,
            maxLines: 30,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }

  Widget _buildDemo4() {
    return Column(
      children: [
        CommonSectionHeader(title: '三、Gradient'),
        // 实现
        JSContainer(
          margin: EdgeInsets.all(16),
          width: 120,
          height: 120,
          onTap: () => {Alert.alertTip('点击BaseContainer')},
          child: Icon(
            Ionicons.balloon_outline,
            size: 60,
            color: themeColors.white(),
          ),
          decoration: BoxDecoration(
            color: themeColors.card(),
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.topRight, colors: [themeColors.red(), themeColors.yellow()]),
            borderRadius: BorderRadius.circular(8),
          ),
          onHoverDecoration: BoxDecoration(
            color: themeColors.card(),
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomLeft, colors: [themeColors.red(), themeColors.yellow()]),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo4Desc)},
          child: JSText(
            controller.demo4Desc,
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
