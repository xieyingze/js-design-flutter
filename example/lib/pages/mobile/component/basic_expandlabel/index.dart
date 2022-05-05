import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/common/section/index.dart';
import 'package:js_design_kit_example/common/utils/alert.dart';
import 'package:js_design_kit_example/common/utils/clipboard.dart';
import 'package:js_design_kit_example/components/button/navbar_button.dart';

import 'controller.dart';

class MBMBExpandLabelPage extends GetView<MBExpandLabelController> {
  const MBMBExpandLabelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBExpandLabelController());

    return BaseScaffold(
      title: 'SMExpandLabel容器',
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
        CommonSectionHeader(title: '一、自动换行'),
        // 实现
        Column(
          children: [
            JSExpandText(
              maxLines: 1,
              text: '以下展示的为公共组件及业务组件。组件的样式仅供参考，开发者可根据自身的需求来自定义自定义组件的样式。',
              color: themeColors.main(),
              onExpanded: (val) => Alert.alertTip(val ? '展开' : '收起'),
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
        CommonSectionHeader(title: '二、固定宽度'),
        // 实现
        Column(
          children: [
            Container(
              width: 200,
              child: JSExpandText(
                maxLines: 1,
                text: '以下展示的为公共组件及业务组件。组件的样式仅供参考，开发者可根据自身的需求来自定义自定义组件的样式。',
                color: themeColors.main(),
                onExpanded: (val) => Alert.alertTip(val ? '展开' : '收起'),
              ),
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
}
