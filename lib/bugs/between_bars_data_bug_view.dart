import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_bugs/line_chart_view.dart';
import 'package:flutter/material.dart';

import '../mock_data_generator.dart';

class BetweenBarsDatBugView extends StatelessWidget {
  final betweenBarsData = [
    BetweenBarsData(
      fromIndex: 0,
      toIndex: 1,
      colors: [Colors.red.withOpacity(0.3)],
    )
  ];

  BetweenBarsDatBugView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text("Works fine when all are values:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getTwoLineChartBarData(
                  getMockedChartPoints(size: 5),
                  getMockedChartPoints(size: 5),
                ),
                betweenBarsData: betweenBarsData,
              ),
              SizedBox(height: 12),
              Text("DOESN'T SHOW between bars data when nulls are in the end:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getTwoLineChartBarData(
                  getMockedChartPoints(size: 5, nullIndexes: [4]),
                  getMockedChartPoints(size: 5, nullIndexes: [4]),
                ),
                betweenBarsData: betweenBarsData,
              ),
              SizedBox(height: 12),
              Text("DOESN'T SHOW between bars data when nulls are in the middle:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getTwoLineChartBarData(
                  getMockedChartPoints(size: 5, nullIndexes: [2]),
                  getMockedChartPoints(size: 5, nullIndexes: [2]),
                ),
                betweenBarsData: betweenBarsData,
              ),
              SizedBox(height: 12),
              Text("BREAKS when the nullSpot is the first value:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getTwoLineChartBarData(
                  getMockedChartPoints(size: 5, nullIndexes: [0]),
                  getMockedChartPoints(size: 5, nullIndexes: [0]),
                ),
                betweenBarsData: betweenBarsData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
