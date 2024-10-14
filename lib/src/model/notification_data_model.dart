import 'package:cloud_firestore/cloud_firestore.dart';
import "package:freezed_annotation/freezed_annotation.dart";

part 'notification_data_model.freezed.dart';
part 'notification_data_model.g.dart';

@freezed
class NotificationDataModel with _$NotificationDataModel {
  const factory NotificationDataModel({
    String? id,
    NotificationUserDataModel? user,

    /// Description du type de la notification
    String? message,
    bool? seen,

    /// Date d'envoi de la notification
    @TimestampConverter() DateTime? sendAt,
    String? type,
    Map<String, dynamic>? metadata,
  }) = _NotificationDataModel;

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) => _$NotificationDataModelFromJson(json);
}

@freezed
class NotificationUserDataModel with _$NotificationUserDataModel {
  const factory NotificationUserDataModel({
    String? id,

    /// Prénom
    String? firstname,

    /// Nom
    String? lastname,

    /// Url de la photo de profil
    String? picture,
  }) = _NotificationUserDataModel;

  factory NotificationUserDataModel.fromJson(Map<String, dynamic> json) => _$NotificationUserDataModelFromJson(json);
}

class TimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(Timestamp? json) {
    return json?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? object) {
    return Timestamp.fromDate(object ?? DateTime.now());
  }
}
