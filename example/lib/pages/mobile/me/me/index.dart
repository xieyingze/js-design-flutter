import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';

import 'controller.dart';

class MBMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MBMeController controller = Get.put(MBMeController());
    return BaseScaffold(
      backgroundColor: themeColors.background(),
      title: '我的',
      child: JSLayout(
        padding: EdgeInsets.all(16),
        type: JSLayoutType.column,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => JSText(
              controller.result.value,
              fontSize: fontSize16,
            ),
          ),
          JSButton(
            margin: EdgeInsets.only(top: 20),
            size: Size(120, 44),
            title: '点击计算',
            onTap: () => controller.onSum(),
          ),
        ],
      ),
    );
  }
}
