import 'package:flutter/material.dart';
import 'step_tracker.dart';
import 'water_meal_planner.dart';
import 'reminders.dart';
import 'progress_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Health & Fitness Tracker')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Step Tracker'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const StepTrackerScreen())),
          ),
          ListTile(
            title: const Text('Water & Meal Planner'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const WaterMealPlannerScreen())),
          ),
          ListTile(
            title: const Text('Reminders'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RemindersScreen())),
          ),
          ListTile(
            title: const Text('Progress Charts'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProgressChartScreen())),
          ),
        ],
      ),
    );
  }
}

