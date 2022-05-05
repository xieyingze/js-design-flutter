import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBManagerSectionListBottom extends StatelessWidget {
  const MBManagerSectionListBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.add,
            size: 20,
          ),
          JSText('添加分组'),
        ]),
        decoration: BoxDecoration(
          border: Border.all(color: themeColors.line(), width: 0.5),
        ),
      ),
    );
  }
}
