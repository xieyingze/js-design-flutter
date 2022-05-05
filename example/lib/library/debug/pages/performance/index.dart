import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/common/base/scaffold.dart';
import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/library/debug/manager/index.dart';
import 'package:js_design_kit_example/library/debug/models/fps.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DebugPerformancePage extends StatefulWidget {
  @override
  _DebugPerformancePageState createState() => _DebugPerformancePageState();
}

class _DebugPerformancePageState extends State<DebugPerformancePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: '性能日志',
      leftWidget: JSIcon(data: Icons.arrow_back_ios, size: 24, onTap: () => Get.back()),
      backgroundColor: themeColors.card(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: SfCartesianChart(
              plotAreaBorderWidth: 20,
              plotAreaBorderColor: themeColors.clear(),
              title: ChartTitle(text: ''),
              legend: Legend(isVisible: false, overflowMode: LegendItemOverflowMode.wrap),
              primaryXAxis: CategoryAxis(
                majorGridLines: MajorGridLines(width: 0),
                labelAlignment: LabelAlignment.start,
                labelStyle: TextStyle(
                  fontSize: fontSize10,
                ),
              ),
              // '\${value}%'
              primaryYAxis: NumericAxis(rangePadding: ChartRangePadding.none, labelFormat: '{value}', axisLine: AxisLine(width: 0), majorTickLines: MajorTickLines(color: themeColors.clear())),
              series: _getDefaultLineSeries(),
              trackballBehavior: TrackballBehavior(
                enable: true,
                activationMode: ActivationMode.singleTap,
                tooltipSettings: InteractiveTooltip(format: 'point.x : point.y', borderWidth: 0),
                // tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
                // markerSettings: TrackballMarkerSettings(borderColor: KColors.mainGreen, width: 60, height: 160, shape: DataMarkerType.none),
                lineWidth: 0.5,
                // builder: (context, detail) {
                //   AnalysisChartGainTrendSubModel m = widget.model.data[detail.groupingModeInfo.currentPointIndices.first];
                //   _date = '(${m.getYearMonthDay})';
                //   _rate = '${(m.gain * 100).toString().formatterDigital()} %';
                //   _rateColor = m.gain >= 0 ? KColors.mainGreenColor() : KColors.mainRedColor();
                //   _numberItemModel = ProfitRateChartNumberItemModel(rate: _rate, rateColor: _rateColor, date: _date);
                //   eventBusInstance.emit(ProfitRateChartNumberEvent(_numberItemModel));
                //   return Container(
                //     width: 10,
                //     height: 10,
                //     color: KColors.clear,
                //   );
                // },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [themeColors.green, themeColors.yellow(), themeColors.red()]
                  .asMap()
                  .keys
                  .map((index) => Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: [themeColors.green(), themeColors.yellow(), themeColors.red()][index],
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            JSText(
                              ['流畅:55~60 fps | 良好: 30~54 fps', '轻微卡顿:15~29 fps', '卡顿:小于15fps'][index],
                              margin: EdgeInsets.only(left: 4),
                              fontSize: fontSize12,
                              color: themeColors.fontMain(),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  List<LineSeries<ProfitRateChartData, String>> _getDefaultLineSeries() {
    final List<ProfitRateChartData> chartData = [];

    if (SMDebugManager.instance.fpsModels.length > 0) {
      SMDebugManager.instance.fpsModels.forEach((element) {
        chartData.add(ProfitRateChartData(x: element.getDate, y1: element.fps?.toInt()));
      });
    }

    return <LineSeries<ProfitRateChartData, String>>[
      LineSeries<ProfitRateChartData, String>(
        // color: _getFpsColor(fps: sales.y1),
        pointColorMapper: (ProfitRateChartData sales, _) => _getFpsColor(fps: sales.y1 ?? 0),
        dataSource: chartData,
        xValueMapper: (ProfitRateChartData sales, _) => sales.x,
        yValueMapper: (ProfitRateChartData sales, _) => sales.y1,
      ),
    ];
  }

  Color _getFpsColor({required num fps}) {
    /**
     * 流畅：55~60 fps
     * 良好: 30~54 fps
     * 轻微卡顿: 15~29 fps
     * 卡顿: 小于15fps
     */
    if (fps >= 30) {
      return themeColors.green();
    } else if (fps >= 15) {
      return themeColors.yellow();
    } else {
      return themeColors.red();
    }
  }
}

class ProfitRateChartData {
  ProfitRateChartData({this.x, this.y1, this.y2});

  String? x;
  num? y1;
  num? y2;
}
