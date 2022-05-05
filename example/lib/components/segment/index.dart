import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/index.dart';

class BaseSegment extends StatelessWidget {
  final EdgeInsets? margin;
  final double? width;
  final List<String> titles;
  final int currentIndex;
  final Function(int index) callBack;
  BaseSegment({
    Key? key,
    this.margin,
    this.width,
    required this.titles,
    required this.currentIndex,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: (width ?? 80) * titles.length + 4,
      padding: EdgeInsets.all(2),
      child: Row(
        children: titles
            .asMap()
            .keys
            .map(
              (index) => GestureDetector(
                onTap: () => callBack(index),
                child: Container(
                  alignment: Alignment.center,
                  width: width ?? 80,
                  child: JSText(
                    titles[index],
                    color: currentIndex == index ? themeColors.fontMain() : themeColors.fontNormal(),
                  ),
                  decoration: BoxDecoration(
                    color: currentIndex == index ? themeColors.card() : themeColors.background(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            )
            .toList(),
      ),
      decoration: BoxDecoration(
        color: themeColors.background(),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
