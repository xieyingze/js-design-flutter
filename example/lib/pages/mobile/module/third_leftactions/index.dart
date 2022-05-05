import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/components/button/navbar_button.dart';

import 'controller.dart';

// # 仿侧滑删除(测试) (ANDROID IOS LINUX MACOS WEB WINDOWS)
// left_scroll_actions: ^2.1.0

class MBLeftActionsPage extends GetView<MBLeftActionsController> {
  const MBLeftActionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBLeftActionsController());

    return BaseScaffold(
      title: '微信',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      backgroundColor: themeColors.card(),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: MaterialButton(
              color: Colors.blue,
              child: Text(
                'ListView Usage Demo',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          Container(height: 50),
          Container(
            padding: EdgeInsets.only(top: 12, left: 8, bottom: 8),
            child: Text('These widget can scroll to actions.'),
          ),
          Container(
            padding: EdgeInsets.only(top: 12, left: 8, bottom: 8),
            child: Text('CupertinoLeftScrollRow'),
          ),
        ],
      ),
    );
  }

  void _onHandleDelete(BuildContext context) {}
}
