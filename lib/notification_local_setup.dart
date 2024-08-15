import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationLocalSetup {
  static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('bell');
    final DarwinInitializationSettings iosInitializationSettings =
        DarwinInitializationSettings(
            requestSoundPermission: true,
            requestBadgePermission: true,
            requestAlertPermission: true,
            onDidReceiveLocalNotification: (int? id, String? title,
                String? body, String? payload) async {});
    InitializationSettings initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
  }
  static NotificationDetails _notificationDetails(){
    return const NotificationDetails(
      android: AndroidNotificationDetails('channelId', 'channelName', importance: Importance.max),
      iOS: DarwinNotificationDetails()
    );
  }
  static Future<void> notifyMe({int id=0, String? title,
    String? body, String? payload})async{
    _flutterLocalNotificationsPlugin.show(id, title, body, _notificationDetails(), payload: payload);
  }
}
