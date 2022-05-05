import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class CommonSectionHeader extends StatelessWidget {
  final String title;
  const CommonSectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: JSText(
        title,
        fontSize: fontSize16,
        color: themeColors.fontMain(),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
