import 'package:flutter/material.dart';
import 'package:flutter_local_notification_setup/screens/home_page.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Notification',
      home: HomePage(),
    );
  }
}