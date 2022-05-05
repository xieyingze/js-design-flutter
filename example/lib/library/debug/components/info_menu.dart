import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/library/debug/plugin/pluggable.dart';

import 'info_menu_item.dart';

class SMDebugMenu extends StatefulWidget {
  final SMMenuItemCallBack callBack;
  final List<SMDebugPluggable?> plugs;
  const SMDebugMenu({Key? key, required this.plugs, required this.callBack}) : super(key: key);

  @override
  _SMDebugMenuState createState() => _SMDebugMenuState();
}

class _SMDebugMenuState extends State<SMDebugMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: JSScreen.bottomFix + 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.plugs
            .asMap()
            .keys
            .map((index) => SMMenuItem(
                  pluginData: widget.plugs[index],
                  callBack: (pluggable) => widget.callBack(pluggable),
                ))
            .toList(),
      ),
    );
  }
}
