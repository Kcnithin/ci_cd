// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PushNotificationResponse _$PushNotificationResponseFromJson(
  Map<String, dynamic> json,
) => _PushNotificationResponse(
  title: json['title'] as String?,
  body: json['body'] as String?,
  userIds:
      (json['userIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  data: json['data'] == null
      ? null
      : PushNotificationData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PushNotificationResponseToJson(
  _PushNotificationResponse instance,
) => <String, dynamic>{
  'title': ?instance.title,
  'body': ?instance.body,
  'userIds': ?instance.userIds,
  'data': ?instance.data?.toJson(),
};

_PushNotificationData _$PushNotificationDataFromJson(
  Map<String, dynamic> json,
) => _PushNotificationData(
  eventCode: json['eventCode'] as String?,
  sourceModule: json['sourceModule'] as String?,
  sourceRecordId: json['sourceRecordId'] as String?,
  screenKey: json['screenKey'] as String?,
);

Map<String, dynamic> _$PushNotificationDataToJson(
  _PushNotificationData instance,
) => <String, dynamic>{
  'eventCode': ?instance.eventCode,
  'sourceModule': ?instance.sourceModule,
  'sourceRecordId': ?instance.sourceRecordId,
  'screenKey': ?instance.screenKey,
};
