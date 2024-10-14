// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDataModel _$$_NotificationDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationDataModel(
      id: json['id'] as String?,
      user: json['user'] == null
          ? null
          : NotificationUserDataModel.fromJson(
              json['user'] as Map<String, dynamic>),
      message: json['message'] as String?,
      seen: json['seen'] as bool?,
      sendAt: const TimestampConverter().fromJson(json['sendAt'] as Timestamp?),
      type: json['type'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_NotificationDataModelToJson(
    _$_NotificationDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user', instance.user?.toJson());
  writeNotNull('message', instance.message);
  writeNotNull('seen', instance.seen);
  writeNotNull('sendAt', const TimestampConverter().toJson(instance.sendAt));
  writeNotNull('type', instance.type);
  writeNotNull('metadata', instance.metadata);
  return val;
}

_$_NotificationUserDataModel _$$_NotificationUserDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationUserDataModel(
      id: json['id'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_NotificationUserDataModelToJson(
    _$_NotificationUserDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('firstname', instance.firstname);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('picture', instance.picture);
  return val;
}
