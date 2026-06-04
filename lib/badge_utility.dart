import 'dart:developer';
import 'package:app_badge_plus/app_badge_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BadgeUtility {
  static const String _badgeCountKey = 'badge_count';

  static Future<void> incrementBadgeCount() async {
    try {
      final bool isSupported = await AppBadgePlus.isSupported();
      if (!isSupported) {
        log('App badging is not supported on this device.', name: 'BadgeUtility');
        return;
      }

      final prefs = await SharedPreferences.getInstance();
      int currentCount = prefs.getInt(_badgeCountKey) ?? 0;
      currentCount += 1;
      await prefs.setInt(_badgeCountKey, currentCount);
      
      await AppBadgePlus.updateBadge(currentCount);
      log('Incremented badge count to $currentCount', name: 'BadgeUtility');
    } catch (e) {
      log('Error incrementing badge count: $e', name: 'BadgeUtility');
    }
  }

  static Future<void> resetBadgeCount() async {
    try {
      final bool isSupported = await AppBadgePlus.isSupported();
      if (!isSupported) return;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_badgeCountKey, 0);
      
      await AppBadgePlus.updateBadge(0);
      log('Reset badge count to 0', name: 'BadgeUtility');
    } catch (e) {
      log('Error resetting badge count: $e', name: 'BadgeUtility');
    }
  }
}
