import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sample_ci_cd/push_notification/push_notification_response.dart';
import 'package:sample_ci_cd/main.dart';
import 'package:sample_ci_cd/screens/profile_screen.dart';
import 'package:sample_ci_cd/screens/contact_screen.dart';
import 'package:url_launcher/url_launcher.dart';


class NavUtility {
  void navigateFromNotification(PushNotificationData? data) {
    if (data == null) return;

    if (data.link != null && data.link!.isNotEmpty) {
      log('Opening URL from notification: ${data.link}', name: 'FCM');
      final uri = Uri.tryParse(data.link!);
      if (uri != null) {
        launchUrl(uri, mode: LaunchMode.inAppBrowserView).then((success) {
          log('launchUrl success: $success', name: 'FCM');
        }).catchError((error) {
          log('launchUrl error: $error', name: 'FCM');
        });
      }
      return;
    }

    log('Navigating for module: ${data.sourceModule}', name: 'FCM');
    
    final context = navigatorKey.currentContext;
    if (context == null) return;

    // Pop all current screens until we reach the home screen
    // This prevents deep-link screens from stacking on top of each other
    Navigator.popUntil(context, (route) => route.isFirst);

    switch (data.sourceModule) {
      case 'PROFILE':
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const ProfileScreen()),
        );
        break;
      case 'CONTACT':
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const ContactScreen()),
        );
        break;
      default:
        // Do nothing or navigate to default screen
        break;
    }
  }
}
