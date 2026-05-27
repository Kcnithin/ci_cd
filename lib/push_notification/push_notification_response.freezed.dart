// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushNotificationResponse {

 String? get title; String? get body; List<int>? get userIds; PushNotificationData? get data;
/// Create a copy of PushNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushNotificationResponseCopyWith<PushNotificationResponse> get copyWith => _$PushNotificationResponseCopyWithImpl<PushNotificationResponse>(this as PushNotificationResponse, _$identity);

  /// Serializes this PushNotificationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushNotificationResponse&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.userIds, userIds)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,const DeepCollectionEquality().hash(userIds),data);

@override
String toString() {
  return 'PushNotificationResponse(title: $title, body: $body, userIds: $userIds, data: $data)';
}


}

/// @nodoc
abstract mixin class $PushNotificationResponseCopyWith<$Res>  {
  factory $PushNotificationResponseCopyWith(PushNotificationResponse value, $Res Function(PushNotificationResponse) _then) = _$PushNotificationResponseCopyWithImpl;
@useResult
$Res call({
 String? title, String? body, List<int>? userIds, PushNotificationData? data
});


$PushNotificationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$PushNotificationResponseCopyWithImpl<$Res>
    implements $PushNotificationResponseCopyWith<$Res> {
  _$PushNotificationResponseCopyWithImpl(this._self, this._then);

  final PushNotificationResponse _self;
  final $Res Function(PushNotificationResponse) _then;

/// Create a copy of PushNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? body = freezed,Object? userIds = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,userIds: freezed == userIds ? _self.userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<int>?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PushNotificationData?,
  ));
}
/// Create a copy of PushNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushNotificationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PushNotificationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PushNotificationResponse].
extension PushNotificationResponsePatterns on PushNotificationResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushNotificationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushNotificationResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushNotificationResponse value)  $default,){
final _that = this;
switch (_that) {
case _PushNotificationResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushNotificationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PushNotificationResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? body,  List<int>? userIds,  PushNotificationData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushNotificationResponse() when $default != null:
return $default(_that.title,_that.body,_that.userIds,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? body,  List<int>? userIds,  PushNotificationData? data)  $default,) {final _that = this;
switch (_that) {
case _PushNotificationResponse():
return $default(_that.title,_that.body,_that.userIds,_that.data);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? body,  List<int>? userIds,  PushNotificationData? data)?  $default,) {final _that = this;
switch (_that) {
case _PushNotificationResponse() when $default != null:
return $default(_that.title,_that.body,_that.userIds,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushNotificationResponse implements PushNotificationResponse {
  const _PushNotificationResponse({this.title, this.body, final  List<int>? userIds = const [], this.data}): _userIds = userIds;
  factory _PushNotificationResponse.fromJson(Map<String, dynamic> json) => _$PushNotificationResponseFromJson(json);

@override final  String? title;
@override final  String? body;
 final  List<int>? _userIds;
@override@JsonKey() List<int>? get userIds {
  final value = _userIds;
  if (value == null) return null;
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PushNotificationData? data;

/// Create a copy of PushNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushNotificationResponseCopyWith<_PushNotificationResponse> get copyWith => __$PushNotificationResponseCopyWithImpl<_PushNotificationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushNotificationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushNotificationResponse&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._userIds, _userIds)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,const DeepCollectionEquality().hash(_userIds),data);

@override
String toString() {
  return 'PushNotificationResponse(title: $title, body: $body, userIds: $userIds, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PushNotificationResponseCopyWith<$Res> implements $PushNotificationResponseCopyWith<$Res> {
  factory _$PushNotificationResponseCopyWith(_PushNotificationResponse value, $Res Function(_PushNotificationResponse) _then) = __$PushNotificationResponseCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? body, List<int>? userIds, PushNotificationData? data
});


@override $PushNotificationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$PushNotificationResponseCopyWithImpl<$Res>
    implements _$PushNotificationResponseCopyWith<$Res> {
  __$PushNotificationResponseCopyWithImpl(this._self, this._then);

  final _PushNotificationResponse _self;
  final $Res Function(_PushNotificationResponse) _then;

/// Create a copy of PushNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? body = freezed,Object? userIds = freezed,Object? data = freezed,}) {
  return _then(_PushNotificationResponse(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,userIds: freezed == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<int>?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PushNotificationData?,
  ));
}

/// Create a copy of PushNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushNotificationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PushNotificationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PushNotificationData {

 String? get eventCode; String? get sourceModule; String? get sourceRecordId; String? get screenKey;
/// Create a copy of PushNotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushNotificationDataCopyWith<PushNotificationData> get copyWith => _$PushNotificationDataCopyWithImpl<PushNotificationData>(this as PushNotificationData, _$identity);

  /// Serializes this PushNotificationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushNotificationData&&(identical(other.eventCode, eventCode) || other.eventCode == eventCode)&&(identical(other.sourceModule, sourceModule) || other.sourceModule == sourceModule)&&(identical(other.sourceRecordId, sourceRecordId) || other.sourceRecordId == sourceRecordId)&&(identical(other.screenKey, screenKey) || other.screenKey == screenKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventCode,sourceModule,sourceRecordId,screenKey);

@override
String toString() {
  return 'PushNotificationData(eventCode: $eventCode, sourceModule: $sourceModule, sourceRecordId: $sourceRecordId, screenKey: $screenKey)';
}


}

/// @nodoc
abstract mixin class $PushNotificationDataCopyWith<$Res>  {
  factory $PushNotificationDataCopyWith(PushNotificationData value, $Res Function(PushNotificationData) _then) = _$PushNotificationDataCopyWithImpl;
@useResult
$Res call({
 String? eventCode, String? sourceModule, String? sourceRecordId, String? screenKey
});




}
/// @nodoc
class _$PushNotificationDataCopyWithImpl<$Res>
    implements $PushNotificationDataCopyWith<$Res> {
  _$PushNotificationDataCopyWithImpl(this._self, this._then);

  final PushNotificationData _self;
  final $Res Function(PushNotificationData) _then;

/// Create a copy of PushNotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventCode = freezed,Object? sourceModule = freezed,Object? sourceRecordId = freezed,Object? screenKey = freezed,}) {
  return _then(_self.copyWith(
eventCode: freezed == eventCode ? _self.eventCode : eventCode // ignore: cast_nullable_to_non_nullable
as String?,sourceModule: freezed == sourceModule ? _self.sourceModule : sourceModule // ignore: cast_nullable_to_non_nullable
as String?,sourceRecordId: freezed == sourceRecordId ? _self.sourceRecordId : sourceRecordId // ignore: cast_nullable_to_non_nullable
as String?,screenKey: freezed == screenKey ? _self.screenKey : screenKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PushNotificationData].
extension PushNotificationDataPatterns on PushNotificationData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushNotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushNotificationData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushNotificationData value)  $default,){
final _that = this;
switch (_that) {
case _PushNotificationData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushNotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _PushNotificationData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? eventCode,  String? sourceModule,  String? sourceRecordId,  String? screenKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushNotificationData() when $default != null:
return $default(_that.eventCode,_that.sourceModule,_that.sourceRecordId,_that.screenKey);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? eventCode,  String? sourceModule,  String? sourceRecordId,  String? screenKey)  $default,) {final _that = this;
switch (_that) {
case _PushNotificationData():
return $default(_that.eventCode,_that.sourceModule,_that.sourceRecordId,_that.screenKey);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? eventCode,  String? sourceModule,  String? sourceRecordId,  String? screenKey)?  $default,) {final _that = this;
switch (_that) {
case _PushNotificationData() when $default != null:
return $default(_that.eventCode,_that.sourceModule,_that.sourceRecordId,_that.screenKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushNotificationData implements PushNotificationData {
  const _PushNotificationData({this.eventCode, this.sourceModule, this.sourceRecordId, this.screenKey});
  factory _PushNotificationData.fromJson(Map<String, dynamic> json) => _$PushNotificationDataFromJson(json);

@override final  String? eventCode;
@override final  String? sourceModule;
@override final  String? sourceRecordId;
@override final  String? screenKey;

/// Create a copy of PushNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushNotificationDataCopyWith<_PushNotificationData> get copyWith => __$PushNotificationDataCopyWithImpl<_PushNotificationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushNotificationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushNotificationData&&(identical(other.eventCode, eventCode) || other.eventCode == eventCode)&&(identical(other.sourceModule, sourceModule) || other.sourceModule == sourceModule)&&(identical(other.sourceRecordId, sourceRecordId) || other.sourceRecordId == sourceRecordId)&&(identical(other.screenKey, screenKey) || other.screenKey == screenKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventCode,sourceModule,sourceRecordId,screenKey);

@override
String toString() {
  return 'PushNotificationData(eventCode: $eventCode, sourceModule: $sourceModule, sourceRecordId: $sourceRecordId, screenKey: $screenKey)';
}


}

/// @nodoc
abstract mixin class _$PushNotificationDataCopyWith<$Res> implements $PushNotificationDataCopyWith<$Res> {
  factory _$PushNotificationDataCopyWith(_PushNotificationData value, $Res Function(_PushNotificationData) _then) = __$PushNotificationDataCopyWithImpl;
@override @useResult
$Res call({
 String? eventCode, String? sourceModule, String? sourceRecordId, String? screenKey
});




}
/// @nodoc
class __$PushNotificationDataCopyWithImpl<$Res>
    implements _$PushNotificationDataCopyWith<$Res> {
  __$PushNotificationDataCopyWithImpl(this._self, this._then);

  final _PushNotificationData _self;
  final $Res Function(_PushNotificationData) _then;

/// Create a copy of PushNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventCode = freezed,Object? sourceModule = freezed,Object? sourceRecordId = freezed,Object? screenKey = freezed,}) {
  return _then(_PushNotificationData(
eventCode: freezed == eventCode ? _self.eventCode : eventCode // ignore: cast_nullable_to_non_nullable
as String?,sourceModule: freezed == sourceModule ? _self.sourceModule : sourceModule // ignore: cast_nullable_to_non_nullable
as String?,sourceRecordId: freezed == sourceRecordId ? _self.sourceRecordId : sourceRecordId // ignore: cast_nullable_to_non_nullable
as String?,screenKey: freezed == screenKey ? _self.screenKey : screenKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
