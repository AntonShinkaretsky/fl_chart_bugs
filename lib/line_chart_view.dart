import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartView extends StatelessWidget {
  final List<LineChartBarData> lineBarsData;
  final List<BetweenBarsData> betweenBarsData;

  const LineChartView(
      {Key? key, required this.lineBarsData, required this.betweenBarsData,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey[300]!),
            bottom: BorderSide(color: Colors.grey[300]!),
            right: BorderSide(color: Colors.grey[300]!),
            left: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        child: LineChart(
          LineChartData(
            minY: 0,
            maxX: 4,
            lineBarsData: lineBarsData,
            betweenBarsData: betweenBarsData,
            titlesData: FlTitlesData(
              leftTitles: SideTitles(showTitles: false),
              topTitles: SideTitles(showTitles: false),
              bottomTitles: SideTitles(showTitles: false),
              rightTitles: SideTitles(showTitles: false),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
          ),
        ),
      ),
    );
  }
}
