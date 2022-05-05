import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/components/button/navbar_button.dart';

import 'controller.dart';

class MBIconPage extends GetView<MBIconController> {
  const MBIconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBIconController());

    controller.initData();

    return BaseScaffold(
      titleWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          JSText(
            'Icon图标',
            color: themeColors.fontMain(),
            fontSize: fontSize18,
            fontWeight: FontWeight.w600,
          ),
          JSText(
            '点击可以复制实现代码',
            color: themeColors.fontNormal(),
            fontSize: fontSize10,
          )
        ],
      ),
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) => Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: controller.titles[index]
                .asMap()
                .keys
                .map(
                  (i) => JSContainer(
                    onTap: () => controller.onHandleCopy(text: controller.titles[index][i]),
                    width: JSScreen.getWidth(context) / 4,
                    child: JSIcon(
                      data: controller.icons[index][i],
                      size: 36,
                      color: themeColors.fontMain(),
                      text: controller.titles[index][i],
                      fontSize: 10,
                    ),
                    decoration: BoxDecoration(border: Border.all(color: themeColors.line(), width: 0.3)),
                  ),
                )
                .toList(),
          ),
        ),
        itemCount: controller.titles.length,
      ),
    );
  }
}
