import 'package:boxpend_flutter_android_app/src/app/core/services/notification_service.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';

class FCMServiceImpl extends NotificationService {
  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  void onMessageTapped(handler) {
    // TODO: implement onMessageTapped
  }
  //final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  // @override
  // Future<void> init() async {
  //   _fcm;
  //   await Firebase.initializeApp();
  // }

  // @override
  // void onMessageTapped(dynamic handler) =>
  //     FirebaseMessaging.onMessageOpenedApp.listen(handler);

  // Future<void> getDeviceToken(Function(String?) getToken) async =>
  //     await _fcm.getToken().then(getToken);

  // void onMessageReceived(
  //   void Function(RemoteMessage)? handler,
  // ) =>
  //     FirebaseMessaging.onMessage.listen(handler);

  // Future<void> onBackgroundMessageReceived(
  //   Future<void> Function(RemoteMessage) handler,
  // ) async =>
  //     FirebaseMessaging.onBackgroundMessage(handler);
}
