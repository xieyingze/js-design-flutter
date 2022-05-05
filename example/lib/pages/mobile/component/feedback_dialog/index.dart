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

class MBDialogPage extends GetView<MBDialogController> {
  const MBDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBDialogController());

    return BaseScaffold(
      title: 'Dialog 弹框',
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
        CommonSectionHeader(title: '一、确认弹框'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {
            JSDialog.showConfirmDialog(
              context: Get.context!,
              content: '这是确认弹框这是确认弹框这是确认弹框',
              confirm: '确定',
              cancel: '取消',
              onCallBack: (int index) {},
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
        CommonSectionHeader(title: '二、Dialog 自定义内容'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {
            JSDialog.show(
              context: Get.context!,
              child: Container(
                width: 300,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    JSIcon(
                      data: Ionicons.checkmark_circle,
                      size: 80,
                      color: themeColors.green(),
                    ),
                    JSText(
                      '提交成功',
                      margin: EdgeInsets.only(top: 20),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: themeColors.card(),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
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
