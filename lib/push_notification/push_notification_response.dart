import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_response.freezed.dart';
part 'push_notification_response.g.dart';

@freezed
sealed class PushNotificationResponse with _$PushNotificationResponse {
  const factory PushNotificationResponse({
    String? title,
    String? body,
    @Default([]) List<int>? userIds,
    PushNotificationData? data,
  }) = _PushNotificationResponse;

  factory PushNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationResponseFromJson(json);
}

@freezed
sealed class PushNotificationData with _$PushNotificationData {
  const factory PushNotificationData({
    String? eventCode,
    String? sourceModule,
    String? sourceRecordId,
    String? screenKey,
  }) = _PushNotificationData;

  factory PushNotificationData.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationDataFromJson(json);
}