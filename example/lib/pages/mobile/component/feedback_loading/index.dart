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

class MBLoadingPage extends GetView<MBLoadingController> {
  const MBLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBLoadingController());

    return BaseScaffold(
      title: 'Loading 加载框',
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
        CommonSectionHeader(title: '一、material样式'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {
            JSLoading.show(
              style: JSLoadingStyle.material,
              text: '加载中..',
            )
          },
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
        CommonSectionHeader(title: '二、cupertino样式'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {
            JSLoading.show(
              style: JSLoadingStyle.cupertino,
              text: '加载中..',
            )
          },
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
