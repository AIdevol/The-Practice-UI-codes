import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SyncFusionCharts extends StatefulWidget {
  final dynamic chartData;

  const SyncFusionCharts({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  @override
  State<SyncFusionCharts> createState() => _SyncFusionChartsState();
}

class _SyncFusionChartsState extends State<SyncFusionCharts> {
  final List<_ChartData> chartData = [
    _ChartData('Mathematics', 65),
    _ChartData('DjangoRestFrame', 90),
    _ChartData('Reactjs', 85),
    _ChartData('UX/UI Design', 75),
    _ChartData('Python', 95),
    _ChartData('Java', 85),
    _ChartData('Flutter', 70),
    _ChartData('Dart', 80),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return Center(
      child: Row(
        children: [
          // Bar Chart
          Container(
            height: 200,
            width: 300,
            child: SfCartesianChart(
              plotAreaBorderWidth: 0,
              primaryXAxis: CategoryAxis(
                majorGridLines: const MajorGridLines(width: 0),
                labelPlacement: LabelPlacement.onTicks,
                majorTickLines: const MajorTickLines(size: 0),
              ),
              primaryYAxis: NumericAxis(
                maximum: 100,
                isVisible: false,
              ),
              series: <CartesianSeries<_ChartData, String>>[
                BarSeries<_ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (_ChartData data, _) => data.skill,
                  yValueMapper: (_ChartData data, _) => data.percentage,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    textStyle: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Pie Chart
          Container(
            height: 200,
            width: 300,
            child: SfCircularChart(
              series: <CircularSeries<_ChartData, String>>[
                PieSeries<_ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (_ChartData data, _) => data.skill,
                  yValueMapper: (_ChartData data, _) => data.percentage,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    textStyle: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Doughnut Chart
          Container(
            height: 200,
            width: 300,
            child: SfCircularChart(
              series: <CircularSeries<_ChartData, String>>[
                DoughnutSeries<_ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (_ChartData data, _) => data.skill,
                  yValueMapper: (_ChartData data, _) => data.percentage,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    textStyle: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Radial Chart
          Container(
            height: 200,
            width: 300,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 100,
                  showLabels: false,
                  showTicks: false,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 100,
                      color: Colors.blue,
                    ),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: chartData.first.percentage.toDouble(),
                      enableAnimation: true,
                      animationDuration: 1000,
                      needleColor: Colors.black,
                      needleLength: 0.8,
                      lengthUnit: GaugeSizeUnit.factor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  final String skill;
  final int percentage;

  _ChartData(this.skill, this.percentage);
}
