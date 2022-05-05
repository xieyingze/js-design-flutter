import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class BaseAvatar extends StatelessWidget {
  final double? size;
  BaseAvatar({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 36,
      height: size ?? 36,
      alignment: Alignment.center,
      child: JSText(
        'JX',
        color: themeColors.white(),
        fontSize: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular((size ?? 36) / 2),
        color: themeColors.yellow(),
        border: Border.all(color: themeColors.white(), width: 2),
      ),
    );
  }
}
