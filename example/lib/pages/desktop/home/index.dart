import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit_example/common/base/line.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';

import 'components/center.dart';
import 'components/detail.dart';
import 'controller.dart';

class DTHomePage extends GetView<DTHomeController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DTHomeController());

    return BaseScaffold(
      child: Row(
        children: [
          DTHomeCenter(),
          CommonLine(width: 1),
          Expanded(
            child: DTHomeDetail(),
          ),
        ],
      ),
    );
  }
}
