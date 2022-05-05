import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';

class MBManagerSymbolListTitle extends StatelessWidget {
  const MBManagerSymbolListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          JSText('品种'),
          Row(
            children: [
              JSText(
                '置顶',
                alignment: Alignment.centerRight,
                width: 80,
              ),
              JSText(
                '置底',
                alignment: Alignment.centerRight,
                width: 80,
              ),
              JSText(
                '排序',
                alignment: Alignment.centerRight,
                width: 80,
              ),
            ],
          )
        ],
      ),
    );
  }
}
