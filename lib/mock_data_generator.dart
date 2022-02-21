import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<FlSpot> getMockedChartPoints({
  required int size,
  int min = 0,
  int max = 30,
  List<int> nullIndexes = const [],
}) {
  var rng = Random();
  List<FlSpot> result = [];
  int index = 0;
  while (index < size) {
    if (nullIndexes.contains(index)) {
      result.add(FlSpot.nullSpot);
    } else {
      result.add(
        FlSpot(
          index.toDouble(),
          min + rng.nextInt(max - min).toDouble(),
        ),
      );
    }
    index++;
  }
  return result;
}

List<LineChartBarData> getOneLineChartBarData(List<FlSpot> flSpotsList) {
  return [
    LineChartBarData(
      showingIndicators: [],
      spots: flSpotsList,
      isCurved: true,
      barWidth: 2,
      belowBarData: BarAreaData(
        show: true,
        colors: [
          Colors.blue[50]!,
        ],
      ),
      dotData: FlDotData(show: false),
      colors: [Colors.blue[200]!],
    )
  ];
}

List<LineChartBarData> getTwoLineChartBarData(
  List<FlSpot> flSpotsList,
  List<FlSpot> secondFlSpotsList,
) {
  return [
    LineChartBarData(
      showingIndicators: [],
      spots: flSpotsList,
      isCurved: true,
      barWidth: 2,
      belowBarData: BarAreaData(
        show: false,
      ),
      dotData: FlDotData(show: false),
      colors: [Colors.blue[200]!],
    ),
    LineChartBarData(
      showingIndicators: [],
      spots: secondFlSpotsList,
      isCurved: true,
      barWidth: 2,
      belowBarData: BarAreaData(
        show: false,
      ),
      dotData: FlDotData(show: false),
      colors: [Colors.red[200]!],
    ),
  ];
}
