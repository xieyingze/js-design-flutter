import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

import '../../../models/api.dart';

enum DebugNetworkCellEvent {
  expand,
  filter,
}

typedef DebugNetworkCellCallBack = Function(DebugNetworkCellEvent event, DebugApiModel? model);

class DebugNetworkCell extends StatefulWidget {
  final DebugApiModel? model;
  final DebugNetworkCellCallBack callBack;
  const DebugNetworkCell({Key? key, this.model, required this.callBack}) : super(key: key);

  @override
  _DebugNetworkCellState createState() => _DebugNetworkCellState();
}

class _DebugNetworkCellState extends State<DebugNetworkCell> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        JSContainer(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          onTap: () => widget.callBack(DebugNetworkCellEvent.expand, widget.model),
          color: themeColors.card(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: themeColors.card(),
                    child: Row(
                      children: [
                        Container(
                          width: 54,
                          height: 20,
                          alignment: Alignment.center,
                          child: JSText(
                            'reqType',
                            color: themeColors.white(),
                            fontSize: fontSize10,
                          ),
                          decoration: BoxDecoration(
                            color: themeColors.green(),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        JSText(
                          '请求地址：${widget.model?.reqUrl ?? ''}',
                          margin: EdgeInsets.only(left: 8),
                          width: JSScreen.scalePixel(200),
                          fontWeight: FontWeight.w500,
                          color: themeColors.fontMain(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // onTap: () => widget.callBack(DebugNetworkCellEvent.filter, widget.model),
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    height: 20,
                    alignment: Alignment.center,
                    child: JSText(
                      (widget.model?.responseTime ?? 0).toString() + 'ms',
                      color: _getNetworkResponseTimeColor(),
                      fontSize: fontSize14,
                    ),
                  )
                ],
              ),
              JSText(
                '当前页面: ${widget.model?.page}',
                fontSize: fontSize10,
                color: themeColors.fontNormal(),
                margin: EdgeInsets.only(top: 8),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 0.5,
          color: themeColors.line(),
        )
      ],
    );
  }

  Color _getNetworkResponseTimeColor() {
    num responseTime = widget.model?.responseTime ?? 0;
    if (responseTime > 3000) {
      return themeColors.red();
    } else if (responseTime > 1000) {
      return themeColors.yellow();
    } else {
      return themeColors.green();
    }
  }
}
