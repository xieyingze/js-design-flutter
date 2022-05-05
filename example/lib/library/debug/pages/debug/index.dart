import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/library/debug/manager/index.dart';
import 'package:js_design_kit_example/library/debug/models/exception.dart';

import 'components/cell.dart';

class DebugErrorPage extends StatefulWidget {
  @override
  _DebugPerformancePageState createState() => _DebugPerformancePageState();
}

class _DebugPerformancePageState extends State<DebugErrorPage> {
  List<DebugExceptionModel> _models = SMDebugManager.instance.errorModels;
  // List<int> _tests = [1, 2, 3, 4, 5];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: '崩溃日志',
      leftWidget: JSIcon(data: Icons.arrow_back_ios, size: 24, onTap: () => Get.back()),
      backgroundColor: themeColors.card(),
      child: _models.isEmpty
          ? Container(
              width: 80,
              height: 80,
              color: themeColors.red(),
            )
          : ListView(
              children: _models
                  .asMap()
                  .keys
                  .map(
                    (index) => DebugErrorCell(
                      index: index,
                      model: _models[index],
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
