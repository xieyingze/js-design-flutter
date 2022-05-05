import 'dart:convert';

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

class MBPickerPage extends GetView<MBPickerController> {
  const MBPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MBPickerController());

    return BaseScaffold(
      title: 'Picker',
      leftWidget: CommonNavBarButton(callBack: () => Get.back()),
      child: ListView(
        children: [
          _buildDemo1(),
          _buildDemo2(),
          _buildDemo3(),
          _buildDemo4(),
        ],
      ),
    );
  }

  Widget _buildDemo1() {
    return Column(
      children: [
        CommonSectionHeader(title: '一、显示单行'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => _showPicker(),
        ),
      ],
    );
  }

  /*
   * @description   显示选择picker
   * @param
   * @return        void
   * @author        jay
   * @date:         2022/3/29 12:59 AM
  */
  void _showPicker() {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    JSPicker picker = JSPicker(
        adapter: PickerDataAdapter<String>(pickerdata: JsonDecoder().convert(controller.pickerData)),
        changeToFirst: false,
        textAlign: TextAlign.left,
        textStyle: TextStyle(
          color: Colors.blue,
        ),
        selectedTextStyle: TextStyle(color: Colors.red),
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (JSPicker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        });
    picker.show(Get.context!);
  }

  Widget _buildDemo2() {
    return Column(
      children: [
        CommonSectionHeader(title: '二、提示成功'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => _showPicker2(),
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => _showPicker2(),
          child: JSText(
            controller.demo2Desc,
            maxLines: 30,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }

  /*
   * @description   显示选择picker
   * @param
   * @return        void
   * @author        jay
   * @date:         2022/3/29 12:59 AM
  */
  void _showPicker2() {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    JSPicker pi = JSPicker(
        adapter: PickerDataAdapter<String>(pickerdata: JsonDecoder().convert(controller.pickerData)),
        changeToFirst: false,
        textAlign: TextAlign.left,
        textStyle: TextStyle(
          color: themeColors.fontMain(),
        ),
        selectedTextStyle: TextStyle(color: themeColors.fontMain()),
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (JSPicker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        });
    // ZSPicker picker = ZSPicker(
    //     adapter: PickerDataAdapter<String>(pickerdata: JsonDecoder().convert(controller.pickerData)),
    //     changeToFirst: false,
    //     textStyle: TextStyle(
    //       color: ZSColors.fontMain(),
    //     ),
    //     selectedTextStyle: TextStyle(
    //       color: ZSColors.fontMain(),
    //       fontWeight: FontWeight.bold,
    //       fontSize: fontSize18,
    //     ),
    //     columnPadding: const EdgeInsets.all(8.0),
    //     onConfirm: (ZSPicker picker, List value) {
    //       print(value.toString());
    //       print(picker.getSelectedValues());
    //     });
    pi.showModal(Get.context!);
    // picker.show(Get.context!);
  }

  Widget _buildDemo3() {
    return Column(
      children: [
        CommonSectionHeader(title: '三、提示错误'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {JSToast.showError(message: '加载失败')},
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo3Desc)},
          child: JSText(
            controller.demo3Desc,
            maxLines: 30,
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
        CommonSectionHeader(title: '四、提示警告'),
        // 实现
        JSButton(
          margin: EdgeInsets.symmetric(vertical: 16),
          size: Size(120, 44),
          title: 'SHOW',
          highColor: Colors.blue,
          onTap: () => {
            {JSToast.showWarming(message: '加载失败')},
          },
        ),
        // 代码
        JSContainer(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          onTap: () => {Alert.alertTip('已复制代码'), ClipBoardUtils.copyText(text: controller.demo4Desc)},
          child: JSText(
            controller.demo4Desc,
            maxLines: 30,
            color: themeColors.fontMain(),
            fontSize: fontSize10,
          ),
          color: themeColors.card(),
        )
      ],
    );
  }
}
