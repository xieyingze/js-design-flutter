import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/image.dart';
import 'package:js_design_kit_example/common/constant/images.dart';
import 'package:js_design_kit_example/common/index.dart';

enum CommonPlaceHolderStatus {
  nodata,
}

class CommonPlaceHolder extends StatelessWidget {
  final CommonPlaceHolderStatus status;
  final String? desc;
  final Widget? button;
  const CommonPlaceHolder({Key? key, this.status = CommonPlaceHolderStatus.nodata, this.desc, this.button}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: JSScreen.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BaseImage(
            name: KImage.commonStatusNoData,
            width: 100,
          ),
          JSText(
            _getStatusDesc(),
            margin: EdgeInsets.only(top: 16),
            fontSize: 13,
            color: themeColors.fontNormal(),
          ),
          button ?? Container(),
        ],
      ),
    );
  }

  String _getStatusDesc() {
    switch (status) {
      case CommonPlaceHolderStatus.nodata:
        return desc ?? '暂无自选数据';
      default:
        return desc ?? '暂无自选数据';
    }
  }
}
