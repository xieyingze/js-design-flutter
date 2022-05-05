import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

import '../controller.dart';

class MBGetXList1 extends StatelessWidget {
  const MBGetXList1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MBGetXController controller = Get.find<MBGetXController>();

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Obx(() => JSText(
                controller.map.value['title'] ?? '',
                margin: EdgeInsets.only(top: 20),
              )),
          JSContainer(
            margin: EdgeInsets.only(top: 20),
            width: 120,
            height: 40,
            child: JSText(
              '点击',
              alignment: Alignment.center,
              color: themeColors.white(),
            ),
            onTap: () => controller.onClick(),
            decoration: BoxDecoration(
              color: themeColors.fontMain(),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          JSContainer(
            margin: EdgeInsets.only(top: 20),
            width: 120,
            height: 40,
            child: JSText(
              '切换容器2',
              alignment: Alignment.center,
              color: themeColors.white(),
            ),
            onTap: () => controller.onSwitchContainer(i: 1),
            decoration: BoxDecoration(
              color: themeColors.fontMain(),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}
