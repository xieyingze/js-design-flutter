import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/common/section/index.dart';
import 'package:js_design_kit_example/common/utils/alert.dart';
import 'package:js_design_kit_example/common/utils/clipboard.dart';
import 'package:js_design_kit_example/components/button/navbar_button.dart';

import 'controller.dart';

class MBProgressPage extends GetView<MBProgressController> {
  const MBProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBProgressController());

    return BaseScaffold(
      title: 'Progress进度条',
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
        CommonSectionHeader(
          title: '一、LinearProgress',
        ),
        // 实现
        Column(
          children: [
            JSLinearProgress(
              alignment: MainAxisAlignment.center,
              percent: 0.6,
              lineHeight: 10,
              backgroundColor: themeColors.line(),
              progressColor: themeColors.main(),
              barRadius: Radius.circular(5),
              animation: true,
              widgetIndicator: JSText(
                '60%',
                fontSize: 10,
                color: themeColors.fontMain(),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
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
        CommonSectionHeader(title: '二、字体大小自动适应(固定宽高)'),
        // 实现
        Column(
          children: [
            JSCircularProgress(
              radius: 80,
              percent: 0.6,
              animation: true,
              lineWidth: 10,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: themeColors.line(),
              progressColor: themeColors.main(),
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
