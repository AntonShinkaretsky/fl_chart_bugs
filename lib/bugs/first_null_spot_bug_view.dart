import 'package:fl_chart_bugs/line_chart_view.dart';
import 'package:flutter/material.dart';

import '../mock_data_generator.dart';

class FirstNullSpotBugView extends StatelessWidget {
  const FirstNullSpotBugView({Key? key}) : super(key: key);

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
                lineBarsData: getOneLineChartBarData(
                  getMockedChartPoints(size: 5),
                ),
                betweenBarsData: [],
              ),
              SizedBox(height: 12),
              Text("Works fine when nulls are in the end:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getOneLineChartBarData(
                  getMockedChartPoints(size: 5, nullIndexes: [4]),
                ),
                betweenBarsData: [],
              ),
              SizedBox(height: 12),
              Text("Works fine when nulls are in the middle:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getOneLineChartBarData(
                  getMockedChartPoints(size: 5, nullIndexes: [2]),
                ),
                betweenBarsData: [],
              ),
              SizedBox(height: 12),
              Text("BREAKS when the nullSpot is the first value:"),
              SizedBox(height: 4),
              LineChartView(
                lineBarsData: getOneLineChartBarData(
                  getMockedChartPoints(size: 5, nullIndexes: [0]),
                ),
                betweenBarsData: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
