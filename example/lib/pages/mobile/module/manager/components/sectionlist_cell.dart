import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/icon.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBManagerSectionListCell extends StatelessWidget {
  const MBManagerSectionListCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              BaseIcon(
                margin: EdgeInsets.only(right: 8),
                iconData: Icons.delete_forever,
                size: 20,
                color: themeColors.red(),
              ),
              JSText(
                '自选一',
                color: themeColors.fontMedium(),
                fontSize: fontSize14,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 40,
                child: CupertinoSwitch(value: false, onChanged: (val) => {}),
              ),
              Container(
                // margin: EdgeInsets.only(right: 8),
                width: 80,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.menu,
                  size: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
