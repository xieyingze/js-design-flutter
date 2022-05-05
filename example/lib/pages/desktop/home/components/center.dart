import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/line.dart';
import 'package:js_design_kit_example/common/index.dart';

import '../controller.dart';
import 'center_list.dart';
import 'center_search.dart';

class DTHomeCenter extends GetView<DTHomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: themeColors.card(),
      child: Column(
        children: [
          DTHomeCenterSearch(),
          CommonLine(height: 1),
          Expanded(
            child: DTHomeCenterList(),
          ),
        ],
      ),
    );
  }
}
