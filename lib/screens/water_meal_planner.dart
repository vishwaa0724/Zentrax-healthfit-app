import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class WaterMealPlannerScreen extends StatefulWidget {
  const WaterMealPlannerScreen({super.key});

  @override
  State<WaterMealPlannerScreen> createState() => _WaterMealPlannerScreenState();
}

class _WaterMealPlannerScreenState extends State<WaterMealPlannerScreen> {
  final _controller = TextEditingController();
  final Box box = Hive.box('healthBox');

  void _savePlan() {
    box.put('mealPlan', _controller.text);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Saved!')));
  }

  @override
  void initState() {
    super.initState();
    _controller.text = box.get('mealPlan', defaultValue: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Water & Meal Planner')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Enter meal/water plan'),
            ),
            ElevatedButton(
              onPressed: _savePlan,
              child: const Text('Save Plan'),
            ),
          ],
        ),
      ),
    );
  }
}
