import 'package:fl_chart_bugs/bugs/first_null_spot_bug_view.dart';
import 'package:flutter/material.dart';

import 'bugs/between_bars_data_bug_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FL Chart bugs (below are buttons):"),
              const SizedBox(height: 16),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FirstNullSpotBugView(),
                      ),
                    );
                  },
                  child: const Text("Line Chart: first nullSpot bug")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BetweenBarsDatBugView(),
                      ),
                    );
                  },
                  child: const Text("Line Chart: betweenBarsData bug")),
            ],
          ),
        ),
      ),
    );
  }
}
