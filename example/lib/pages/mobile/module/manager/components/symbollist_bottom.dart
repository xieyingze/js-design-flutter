import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBManagerSymbolListBottom extends StatelessWidget {
  const MBManagerSymbolListBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                  size: 20,
                ),
                JSText('全部'),
              ],
            ),
            Row(
              children: [
                JSText(
                  '添加到',
                  margin: EdgeInsets.only(right: 32),
                ),
                JSText('删除'),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: themeColors.line(), width: 0.5),
        ),
      ),
    );
  }
}
