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

class MBModalPage extends GetView<MBModalController> {
  const MBModalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBModalController());

    return BaseScaffold(
      title: 'Modal 弹框',
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
        CommonSectionHeader(title: '一、ActionSheet'),
        // 实现
        // ShakeAnimationWidget(
        //   shakeAnimationController: controller.controller,
        //   shakeAnimationType: ShakeAnimationType.LeftRightShake,
        //   //设置不开启抖动
        //   isForward: false,
        //   //默认为 0 无限执行
        //   shakeCount: 0,
        //   //抖动的幅度 取值范围为[0,1]
        //   shakeRange: 0.2,
        //   child: ZSButton(
        //     margin: EdgeInsets.symmetric(vertical: 16),
        //     size: Size(120, 44),
        //     title: 'SHOW',
        //     highColor: Colors.blue,
        //     onTap: () => {
        //       controller.controller.start(),
        //       SMModal.showActionSheet(
        //         title: '选择水果',
        //         items: ['苹果', '香蕉🍌', '橙子🍊', '西瓜🍉', '葡萄🍇'],
        //         cancel: '取消',
        //       )
        //     },
        //   ),
        // ),
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
        CommonSectionHeader(title: '二、Modal自定义内容'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {
            JSModal.show(
              context: Get.context!,
              child: Container(
                width: double.infinity,
                height: 360,
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
                      margin: EdgeInsets.only(top: 20, bottom: 80),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: themeColors.card(),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                ),
              ),
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
