import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/line.dart';
import 'package:js_design_kit_example/common/base/state.dart';
import 'package:js_design_kit_example/common/index.dart';

import '../controller.dart';

class DTHomeCenterList extends GetView<DTHomeController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DTHomeController());

    return Container(
      color: themeColors.card(),
      child: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            GestureDetector(
              onTap: () => {},
              child: Container(
                padding: EdgeInsets.all(16),
                color: themeColors.background(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        JSText(
                          '--',
                          color: themeColors.fontMedium(),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          width: 60,
                          height: 20,
                          alignment: Alignment.center,
                          child: JSText(
                            '--',
                            color: themeColors.white(),
                            fontSize: fontSize12,
                          ),
                          decoration: BoxDecoration(
                            color: themeColors.green(),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        _getStatusWidget(state: WidgetState.success),
                        JSText(
                          '--' + 'ms',
                          margin: const EdgeInsets.only(left: 8),
                          textAlign: TextAlign.right,
                          width: 60,
                          color: themeColors.fontMedium(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            CommonLine(height: 1),
          ],
        ),
        itemCount: 1,
      ),
    );
  }

  Widget _getStatusWidget({required WidgetState state}) {
    switch (state) {
      case WidgetState.busy:
        return Container(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(themeColors.fontNormal()),
          ),
        );
      case WidgetState.error:
        return Icon(
          Icons.error,
          size: 20,
          color: themeColors.red(),
        );
      case WidgetState.success:
        return Icon(
          Icons.check_circle,
          size: 20,
          color: themeColors.green(),
        );
      default:
        return Container();
    }
  }
}
