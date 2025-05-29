import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressChartScreen extends StatelessWidget {
  const ProgressChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Charts')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: const [
                  FlSpot(0, 0),
                  FlSpot(1, 2),
                  FlSpot(2, 1.5),
                  FlSpot(3, 2.8),
                  FlSpot(4, 3.5),
                ],
                isCurved: true,
                color: Color(0x0000ff00),
                barWidth: 4,
              ),
            ],
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(show: false),
          ),
        ),
      ),
    );
  }
}
