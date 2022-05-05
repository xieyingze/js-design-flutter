import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/constant/images.dart';
import 'package:js_design_kit_example/common/index.dart';

class MBMeHeader extends StatelessWidget {
  final Function callBack;
  MBMeHeader({Key? key, required this.callBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColors.card(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => callBack(),
            child: Container(
              margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: JSImage(
                  url: KImage.commonDefaultAvatar,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => callBack(),
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: JSText(
                '立即登录',
                color: themeColors.fontMain(),
                fontWeight: FontWeight.w500,
                fontSize: fontSize16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
