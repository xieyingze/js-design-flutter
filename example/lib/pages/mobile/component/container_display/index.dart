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

class MBDisplayPage extends GetView<MBDisplayController> {
  const MBDisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBDisplayController());

    return BaseScaffold(
      title: 'Layout容器',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildDemo1(),
                _buildDemo2(),
                _buildDemo3(),
                _buildDemo4(),
                _buildDemo5(),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: controller.list
                    .asMap()
                    .keys
                    .map((index) => JSContainer(
                          width: 80,
                          height: 40,
                          color: themeColors.background(),
                          alignment: Alignment.center,
                          onTap: () => controller.onJumpToNextPage(index: index),
                          child: JSText(
                            controller.list[index],
                            fontSize: fontSize10,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                    .toList(),
              ),
              decoration: BoxDecoration(
                color: themeColors.card(),
                boxShadow: [BoxShadow(color: themeColors.shadow(), offset: Offset(1, -3), blurRadius: 5)],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDemo1() {
    return Column(
      children: [
        CommonSectionHeader(title: '一、type为column'),
        // 实现
        JSLayout(
          type: JSLayoutType.column,
          children: [themeColors.green(alpha: 0.5), themeColors.red(alpha: 0.5), themeColors.blue(alpha: 0.5)]
              .map(
                (color) => Container(
                  margin: EdgeInsets.only(top: 1),
                  width: 80,
                  height: 20,
                  color: color,
                ),
              )
              .toList(),
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
        CommonSectionHeader(title: '二、type为row'),
        // 实现
        JSLayout(
          type: JSLayoutType.row,
          children: [themeColors.green(alpha: 0.5), themeColors.red(alpha: 0.5), themeColors.blue(alpha: 0.5)]
              .map(
                (color) => Container(
                  margin: EdgeInsets.only(top: 1),
                  width: 80,
                  height: 20,
                  color: color,
                ),
              )
              .toList(),
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

  Widget _buildDemo3() {
    return Column(
      children: [
        CommonSectionHeader(title: '三、type为wrap'),
        // 实现
        JSLayout(
          type: JSLayoutType.wrap,
          children: [
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
          ]
              .map(
                (color) => Container(
                  margin: EdgeInsets.only(top: 1),
                  width: 80,
                  height: 20,
                  color: color,
                ),
              )
              .toList(),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo3Desc)},
          child: JSText(
            controller.demo3Desc,
            maxLines: 100,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }

  Widget _buildDemo4() {
    return Column(
      children: [
        CommonSectionHeader(title: '四、type为stack'),
        // 实现
        JSLayout(
          type: JSLayoutType.stack,
          children: [
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
          ]
              .asMap()
              .keys
              .map(
                (index) => Container(
                  margin: EdgeInsets.only(top: (30 * double.parse(index.toString()))),
                  width: 80,
                  height: 40,
                  color: [
                    themeColors.green(alpha: 0.5),
                    themeColors.red(alpha: 0.5),
                    themeColors.blue(alpha: 0.5),
                  ][index],
                ),
              )
              .toList(),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo4Desc)},
          child: JSText(
            controller.demo4Desc,
            maxLines: 100,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }

  Widget _buildDemo5() {
    return Column(
      children: [
        CommonSectionHeader(title: '五、type为list'),
        // 实现
        JSLayout(
          type: JSLayoutType.list,
          listWidth: double.infinity,
          listHeight: 200,
          children: [
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
            themeColors.green(alpha: 0.5),
            themeColors.red(alpha: 0.5),
            themeColors.blue(alpha: 0.5),
          ]
              .map(
                (color) => Container(
                  margin: EdgeInsets.only(top: 1),
                  width: 80,
                  height: 30,
                  color: color,
                ),
              )
              .toList(),
        ),

        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo5Desc)},
          child: JSText(
            controller.demo5Desc,
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
