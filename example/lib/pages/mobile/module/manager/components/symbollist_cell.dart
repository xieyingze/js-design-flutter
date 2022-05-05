import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/icon.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBManagerSymbolListCell extends StatelessWidget {
  const MBManagerSymbolListCell({Key? key}) : super(key: key);

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
                iconData: Icons.check_box_outline_blank,
                size: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JSText(
                    '小米集团',
                    color: themeColors.fontMain(),
                    fontSize: fontSize16,
                    fontWeight: FontWeight.w500,
                  ),
                  JSText(
                    '801010',
                    color: themeColors.fontMedium(),
                    fontSize: fontSize14,
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 80,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.vertical_align_top,
                  size: 20,
                ),
              ),
              Container(
                width: 80,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.vertical_align_bottom,
                  size: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
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
