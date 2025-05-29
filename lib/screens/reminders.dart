import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    const AndroidInitializationSettings settings = AndroidInitializationSettings('@mipmap/ic_launcher');
    _notifications.initialize(const InitializationSettings(android: settings));
  }

  void _showNotification() async {
    const AndroidNotificationDetails details = AndroidNotificationDetails('reminder', 'Reminders');
    const NotificationDetails notificationDetails = NotificationDetails(android: details);
    await _notifications.show(0, 'Reminder', 'Stay hydrated and active!', notificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reminders')),
      body: Center(
        child: ElevatedButton(
          onPressed: _showNotification,
          child: const Text('Send Reminder Now'),
        ),
      ),
    );
  }
}
