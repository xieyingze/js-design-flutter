import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBMeCell extends StatelessWidget {
  final String title;
  final String icon;
  final Function callBack;
  MBMeCell({
    Key? key,
    required this.title,
    required this.icon,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => callBack(),
          child: Container(
            padding: const EdgeInsets.all(20),
            color: themeColors.card(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    JSImage(url: icon),
                    JSText(
                      title,
                      margin: const EdgeInsets.only(left: 12),
                      color: themeColors.fontMain(),
                      fontSize: fontSize14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: themeColors.fontTips(),
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
