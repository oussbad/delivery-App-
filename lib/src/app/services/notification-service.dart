import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import '../../presentation/home/pages/notifications_page.dart';

// Get instance From FirebaseMessaging
final _firebaseMessaging = FirebaseMessaging.instance;

class FirebaseNotification {
  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    getDeviceToken();
    onMessage();
    onMessageOpenedApp();
    _firebaseMessagingBackgroundHandler;
    onBackgroundMessage();
  }
}

// Get deviceToken
void getDeviceToken() async {
  final deviceToken = await _firebaseMessaging.getToken();
  print("Device Token : $deviceToken");
}
// App is open
void onMessage() {
  FirebaseMessaging.onMessage.listen((RemoteMessage event) {
    print("message recieved");
    print(event.notification!.body);
  });
}
// Message clicked
void onMessageOpenedApp() {
  FirebaseMessaging.onMessageOpenedApp.listen((message) {
    print('Message clicked!');
    Get.to(arguments: "${message.messageId}",()=>NotificationsPage());
  });
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // you need to initialize firebase first

  print("Handling a background message: ${message.data}");
}
// App terminat
Future<void> onBackgroundMessage() async {
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}
