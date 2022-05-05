import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBLeftActionsCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 60,
                    height: 60,
                    child: JSIcon(
                      data: Ionicons.basketball_outline,
                      size: 40,
                      color: themeColors.white(),
                    ),
                    decoration: BoxDecoration(
                      color: themeColors.main(),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  JSLayout(
                    type: JSLayoutType.column,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      JSText(
                        '订阅消息',
                        margin: EdgeInsets.only(bottom: 4),
                        color: themeColors.fontMain(),
                        fontWeight: FontWeight.w500,
                        fontSize: fontSize16,
                      ),
                      JSText(
                        '[22条]茂名网微茂名：不负好时光！茂名这篇绿地开始..',
                        width: JSScreen.getWidth(context) - 80,
                        color: themeColors.fontNormal(),
                        maxLines: 1,
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JSText(
                    '下午14：20',
                    color: themeColors.fontNormal(),
                    fontSize: fontSize12,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(margin: EdgeInsets.symmetric(horizontal: 16), color: themeColors.line(alpha: 0.5), height: 0.5)
      ],
    );
  }
}
