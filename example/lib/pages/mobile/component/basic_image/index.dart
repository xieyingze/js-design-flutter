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

class MBImagePage extends GetView<MBImageController> {
  const MBImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBImageController());

    return BaseScaffold(
      title: 'ZSImage',
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
        CommonSectionHeader(title: '一、高斯模糊过渡效果'),
        // 实现
        JSImage(
          margin: EdgeInsets.symmetric(vertical: 16),
          url: controller.imageUrl1,
          size: Size(120, 80),
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
        CommonSectionHeader(title: '二、默认文字过渡效果'),
        // 实现
        JSImage(
          margin: EdgeInsets.symmetric(vertical: 16),
          placeholder: JSImagePlaceholder.avatar,
          avatarText: 'HA',
          url: controller.imageUrl2,
          size: Size(80, 80),
          borderColor: themeColors.card(),
          borderWidth: 10,
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
        CommonSectionHeader(title: '三、loading过渡效果'),
        // 实现
        JSImage(
          margin: EdgeInsets.symmetric(vertical: 16),
          placeholder: JSImagePlaceholder.indicator,
          url: controller.imageUrl3,
          size: Size(120, 80),
          backgroundColor: themeColors.yellow(),
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
        CommonSectionHeader(title: '四、圆角+阴影'),
        // 实现
        JSImage(
          borderRadius: 40,
          margin: EdgeInsets.symmetric(vertical: 16),
          placeholder: JSImagePlaceholder.avatar,
          avatarText: 'JX',
          url: controller.imageUrl2,
          size: Size(80, 80),
          showShadow: true,
        ),
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
}
