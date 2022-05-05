import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';

import 'controller.dart';

class DeskTopNetworkHeaderPage extends GetView<DTSettingController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DTSettingController());

    return BaseScaffold(
      child: Column(
        children: [
          JSText('请求头'),
        ],
      ),
    );
  }
}
