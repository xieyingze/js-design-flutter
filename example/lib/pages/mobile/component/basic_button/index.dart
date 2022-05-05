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

// enum ZSButtonType {
//   normal,
//   info,
//   success,
//   danger,
//   warming,
// }

class MBButtonPage extends GetView<MBButtonController> {
  const MBButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBButtonController());

    return BaseScaffold(
      title: 'ZSButton',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: ListView(
        children: [
          _buildDemo1(),
          _buildDemo2(),
          _buildDemo3(),
          _buildDemo4(),
          _buildDemo5(),
        ],
      ),
    );
  }

  Widget _buildDemo1() {
    return Column(
      children: [
        CommonSectionHeader(title: '一、按钮类型'),
        // 实现
        Wrap(
          children: [JSButtonType.normal, JSButtonType.info, JSButtonType.success, JSButtonType.danger, JSButtonType.warming]
              .map(
                (type) => JSButton(
                  type: type,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  size: Size(120, 50),
                  title: '确定',
                  onTap: () => {},
                ),
              )
              .toList(),
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
        CommonSectionHeader(title: '二、自定义颜色按钮'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(200, 50),
          title: '确定',
          textColor: themeColors.green(),
          normalColor: themeColors.card(),
          borderColor: themeColors.green(),
          highColor: themeColors.background(),
          onTap: () => {},
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

  Widget _buildDemo3() {
    return Column(
      children: [
        CommonSectionHeader(title: '三、禁用状态'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          type: JSButtonType.info,
          enable: false,
          size: Size(200, 50),
          title: '禁用状态',
          highColor: Colors.blue,
          onTap: () => {},
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo3Desc)},
          child: JSText(
            controller.demo3Desc,
            maxLines: 100,
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
        CommonSectionHeader(title: '四、加载中'),
        // 实现
        Obx(() => JSButton(
              margin: EdgeInsets.symmetric(vertical: 16),
              type: JSButtonType.info,
              size: Size(200, 50),
              title: '点击加载',
              loadingText: '加载中..',
              loading: controller.isLoading.value,
              highColor: Colors.blue,
              onTap: () => controller.onClickButton(),
            )),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo4Desc)},
          child: JSText(
            controller.demo4Desc,
            maxLines: 100,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }

  Widget _buildDemo5() {
    return Column(
      children: [
        CommonSectionHeader(title: '五、文字+Icon按钮'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(200, 50),
          title: '确定',
          iconData: Ionicons.logo_twitter,
          highColor: Colors.blue,
          onTap: () => {},
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo5Desc)},
          child: JSText(
            controller.demo5Desc,
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
