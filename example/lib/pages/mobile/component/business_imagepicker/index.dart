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

class MBImagePickerPage extends GetView<MBImagePickerController> {
  const MBImagePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBImagePickerController());

    return BaseScaffold(
      title: '图片选择',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: ListView(
        children: [
          _buildDemo1(),
          _buildDemo2(),
          _buildDemo3(),
        ],
      ),
    );
  }

  Widget _buildDemo1() {
    return Column(
      children: [
        CommonSectionHeader(
          title: '一、选择单张图片',
        ),
        // 实现
        Column(
          children: [
            Obx(() => JSImage(
                  url: controller.imagePath.value,
                  size: Size(120, 80),
                  backgroundColor: themeColors.line(),
                  onTap: () => controller.onJumpToImageViewer(),
                )),
            JSButton(
              margin: EdgeInsets.symmetric(vertical: 16),
              size: Size(120, 40),
              title: '选择图片',
              onTap: () => controller.onSelectSingleImage(),
            ),
          ],
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
        CommonSectionHeader(title: '二、选择多张图片'),
        // 实现
        Column(
          children: [
            Obx(() => Wrap(
                  children: controller.images
                      .map((element) => JSImage(
                            margin: EdgeInsets.only(right: 8, top: 8),
                            size: Size(120, 80),
                            url: element,
                            backgroundColor: themeColors.line(),
                          ))
                      .toList(),
                )),
            JSButton(
              margin: EdgeInsets.symmetric(vertical: 16),
              size: Size(120, 40),
              title: '选择图片',
              onTap: () => controller.onSelectMultiImage(),
            ),
          ],
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
        CommonSectionHeader(title: '二、选择视频'),
        // 实现
        Column(
          children: [
            JSButton(
              margin: EdgeInsets.symmetric(vertical: 16),
              size: Size(120, 40),
              title: '选择图片',
              onTap: () => controller.onSelectMultiImage(),
            ),
          ],
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
}
