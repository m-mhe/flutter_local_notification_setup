import 'package:flutter/material.dart';
import 'package:flutter_local_notification_setup/app.dart';
import 'package:flutter_local_notification_setup/notification_local_setup.dart';

Future<void> main() async{
  await NotificationLocalSetup.initialize();
  runApp(const MyApp());
}