import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class SMDebugInfoMessage extends StatefulWidget {
  final List<Widget> widgets;
  const SMDebugInfoMessage({Key? key, required this.widgets}) : super(key: key);

  @override
  _SMDebugInfoMessageState createState() => _SMDebugInfoMessageState();
}

class _SMDebugInfoMessageState extends State<SMDebugInfoMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Wrap(
        children: widget.widgets,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: themeColors.darkShadow(), offset: Offset(0, 2), blurRadius: 6),
        ],
      ),
    );
  }
}
