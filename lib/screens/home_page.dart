import 'package:flutter/material.dart';
import 'package:flutter_local_notification_setup/notification_local_setup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notifications_active),
        title: const Text('Notification Checker'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              NotificationLocalSetup.notifyMe(title: 'Attention', body: 'Congratulations, it works!');
            },
            child: const Text('Press here')),
      ),
    );
  }
}
