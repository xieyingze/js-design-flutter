import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';

import 'components/drag.dart';
import 'controller.dart';

class MBKrakenPage extends GetView<MBKrakenController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBKrakenController());

    return BaseScaffold(
      title: '',
      backgroundColor: themeColors.card(),
      child: const DraggableCard(
        child: FlutterLogo(
          size: 128,
        ),
      ),
      // child: Column(
      //   children: [
      //     MBKrakenAnimation(),
      //     MBKrakenSwitchAnimation(),
      //     MaterialButton(
      //       splashColor: ZSColors.mainGreen(),
      //       color: ZSColors.mainGreen(),
      //       textColor: ZSColors.white(),
      //       elevation: 2,
      //       highlightElevation: 0,
      //       child: new Text('点我'),
      //       onPressed: () {
      //         // ...
      //       },
      //     ),
      //     const DraggableCard(
      //       child: FlutterLogo(
      //         size: 128,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
