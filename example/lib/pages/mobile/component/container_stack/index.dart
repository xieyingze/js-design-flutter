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

class MBStackPage extends GetView<MBStackController> {
  const MBStackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBStackController());

    return BaseScaffold(
      title: 'Stack容器',
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
        Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: themeColors.green(alpha: 0.5),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: themeColors.red(alpha: 0.5),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 40),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: themeColors.blue(alpha: 0.5),
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
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
        CommonSectionHeader(title: '二、搭配Align定位'),
        // 实现
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: themeColors.green(alpha: 0.5),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: themeColors.red(alpha: 0.5),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 40),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: themeColors.blue(alpha: 0.5),
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
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
