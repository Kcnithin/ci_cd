import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sample_ci_cd/push_notification/push_notification_response.dart';
import 'package:sample_ci_cd/push_notification_navigation_utility.dart';

import 'notification_service.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  log(
    'Background message received: ${message.messageId}',
    name: 'FCM-Background',
  );
  log('Background message data: ${message.data}', name: 'FCM-Background');
}

class FCMService {
  static final FCMService _instance = FCMService._internal();

  factory FCMService() => _instance;

  FCMService._internal();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    await _requestPermission();
    await _getToken();
    _setupTokenRefreshListener();
    _setupForegroundListener();
    _setupMessageOpenedAppListener();
  }

  Future<void> _requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    log('Permission status: ${settings.authorizationStatus}', name: 'FCM');

    switch (settings.authorizationStatus) {
      case AuthorizationStatus.authorized:
        log('User granted permission', name: 'FCM');
        break;
      case AuthorizationStatus.provisional:
        log('User granted provisional permission', name: 'FCM');
        break;
      default:
        log('User declined or has not accepted permission', name: 'FCM');
    }
  }

  Future<String?> _getToken() async {
    try {
      final token = await _messaging.getToken();
      if (token != null) {
        log('FCM Token: $token', name: 'FCM');
        // await getIt<SharedPrefUtil>().setFCMToken(token);
      } else {
        log('FCM Token is null', name: 'FCM');
      }
      return token;
    } catch (e) {
      log('Error getting FCM token: $e', name: 'FCM');
      return null;
    }
  }

  void _setupTokenRefreshListener() {
    _messaging.onTokenRefresh.listen((newToken) async {
      log('FCM Token refreshed: $newToken', name: 'FCM');
      // await getIt<SharedPrefUtil>().setFCMToken(newToken);
    });
  }

  void _setupForegroundListener() {
    _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((message) {
      log('Foreground message received: ${message.messageId}', name: 'FCM');

      if (message.notification != null) {
        NotificationService().showNotification(
          title: message.notification!.title ?? 'CAFM',
          body:
              message.notification!.body ??
              'you have recieved a new notification',
          data: message.data.isNotEmpty
              ? PushNotificationData.fromJson(message.data)
              : null,
        );
        log(
          'Foreground notification: '
          'title=${message.notification!.title}, '
          'body=${message.notification!.body}',
          name: 'FCM',
        );
      }

      if (message.data.isNotEmpty) {
        log('Foreground message data: ${message.data}', name: 'FCM');
      }
    });
  }

  void _setupMessageOpenedAppListener() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      log(
        'Notification tapped (app in background): ${message.messageId}',
        name: 'FCM',
      );
      _handleNotificationTap(message);
    });
  }

  Future<void> checkInitialMessage() async {
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      log(
        'App launched from terminated state via notification: '
        '${initialMessage.messageId}',
        name: 'FCM',
      );
      _handleNotificationTap(initialMessage);
    }
  }

  void _handleNotificationTap(RemoteMessage message) {
    log('Notification tap payload: ${message.data}', name: 'FCM');

    final notification = PushNotificationResponse(
      title: message.notification?.title ?? '',
      body: message.notification?.body ?? '',
      data: message.data.isNotEmpty
          ? PushNotificationData.fromJson(message.data)
          : null,
    );

    NavUtility().navigateFromNotification(notification.data);
  }
}
