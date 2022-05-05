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

class MBListPage extends GetView<MBListController> {
  const MBListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBListController());

    return BaseScaffold(
      title: 'ListView容器',
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
        CommonSectionHeader(title: '一、简单的使用'),
        // 实现
        Container(
          height: 200,
          child: ListView(
            children: List.generate(
                5,
                (index) => Container(
                      margin: EdgeInsets.only(top: 8),
                      height: 40,
                      color: themeColors.blue(),
                    )),
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
    return Column(children: [
      CommonSectionHeader(title: '二、无限列表(性能最优)'),
      // 实现
      Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(top: 8),
            height: 40,
            color: themeColors.blue(),
          ),
          // itemCount: 100,
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
      )
    ]);
  }
}
