// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDataModel _$NotificationDataModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationDataModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationDataModel {
  String? get id => throw _privateConstructorUsedError;
  NotificationUserDataModel? get user => throw _privateConstructorUsedError;

  /// Description du type de la notification
  String? get message => throw _privateConstructorUsedError;
  bool? get seen => throw _privateConstructorUsedError;

  /// Date d'envoi de la notification
  @TimestampConverter()
  DateTime? get sendAt => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataModelCopyWith<NotificationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataModelCopyWith<$Res> {
  factory $NotificationDataModelCopyWith(NotificationDataModel value,
          $Res Function(NotificationDataModel) then) =
      _$NotificationDataModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      NotificationUserDataModel? user,
      String? message,
      bool? seen,
      @TimestampConverter() DateTime? sendAt,
      String? type,
      Map<String, dynamic>? metadata});

  $NotificationUserDataModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$NotificationDataModelCopyWithImpl<$Res>
    implements $NotificationDataModelCopyWith<$Res> {
  _$NotificationDataModelCopyWithImpl(this._value, this._then);

  final NotificationDataModel _value;
  // ignore: unused_field
  final $Res Function(NotificationDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? message = freezed,
    Object? seen = freezed,
    Object? sendAt = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NotificationUserDataModel?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendAt: sendAt == freezed
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  @override
  $NotificationUserDataModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $NotificationUserDataModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_NotificationDataModelCopyWith<$Res>
    implements $NotificationDataModelCopyWith<$Res> {
  factory _$$_NotificationDataModelCopyWith(_$_NotificationDataModel value,
          $Res Function(_$_NotificationDataModel) then) =
      __$$_NotificationDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      NotificationUserDataModel? user,
      String? message,
      bool? seen,
      @TimestampConverter() DateTime? sendAt,
      String? type,
      Map<String, dynamic>? metadata});

  @override
  $NotificationUserDataModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_NotificationDataModelCopyWithImpl<$Res>
    extends _$NotificationDataModelCopyWithImpl<$Res>
    implements _$$_NotificationDataModelCopyWith<$Res> {
  __$$_NotificationDataModelCopyWithImpl(_$_NotificationDataModel _value,
      $Res Function(_$_NotificationDataModel) _then)
      : super(_value, (v) => _then(v as _$_NotificationDataModel));

  @override
  _$_NotificationDataModel get _value =>
      super._value as _$_NotificationDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? message = freezed,
    Object? seen = freezed,
    Object? sendAt = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$_NotificationDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NotificationUserDataModel?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendAt: sendAt == freezed
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: metadata == freezed
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDataModel implements _NotificationDataModel {
  const _$_NotificationDataModel(
      {this.id,
      this.user,
      this.message,
      this.seen,
      @TimestampConverter() this.sendAt,
      this.type,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$_NotificationDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDataModelFromJson(json);

  @override
  final String? id;
  @override
  final NotificationUserDataModel? user;

  /// Description du type de la notification
  @override
  final String? message;
  @override
  final bool? seen;

  /// Date d'envoi de la notification
  @override
  @TimestampConverter()
  final DateTime? sendAt;
  @override
  final String? type;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NotificationDataModel(id: $id, user: $user, message: $message, seen: $seen, sendAt: $sendAt, type: $type, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.seen, seen) &&
            const DeepCollectionEquality().equals(other.sendAt, sendAt) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(seen),
      const DeepCollectionEquality().hash(sendAt),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationDataModelCopyWith<_$_NotificationDataModel> get copyWith =>
      __$$_NotificationDataModelCopyWithImpl<_$_NotificationDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDataModelToJson(
      this,
    );
  }
}

abstract class _NotificationDataModel implements NotificationDataModel {
  const factory _NotificationDataModel(
      {final String? id,
      final NotificationUserDataModel? user,
      final String? message,
      final bool? seen,
      @TimestampConverter() final DateTime? sendAt,
      final String? type,
      final Map<String, dynamic>? metadata}) = _$_NotificationDataModel;

  factory _NotificationDataModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationDataModel.fromJson;

  @override
  String? get id;
  @override
  NotificationUserDataModel? get user;
  @override

  /// Description du type de la notification
  String? get message;
  @override
  bool? get seen;
  @override

  /// Date d'envoi de la notification
  @TimestampConverter()
  DateTime? get sendAt;
  @override
  String? get type;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDataModelCopyWith<_$_NotificationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationUserDataModel _$NotificationUserDataModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationUserDataModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationUserDataModel {
  String? get id => throw _privateConstructorUsedError;

  /// Prénom
  String? get firstname => throw _privateConstructorUsedError;

  /// Nom
  String? get lastname => throw _privateConstructorUsedError;

  /// Url de la photo de profil
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationUserDataModelCopyWith<NotificationUserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationUserDataModelCopyWith<$Res> {
  factory $NotificationUserDataModelCopyWith(NotificationUserDataModel value,
          $Res Function(NotificationUserDataModel) then) =
      _$NotificationUserDataModelCopyWithImpl<$Res>;
  $Res call({String? id, String? firstname, String? lastname, String? picture});
}

/// @nodoc
class _$NotificationUserDataModelCopyWithImpl<$Res>
    implements $NotificationUserDataModelCopyWith<$Res> {
  _$NotificationUserDataModelCopyWithImpl(this._value, this._then);

  final NotificationUserDataModel _value;
  // ignore: unused_field
  final $Res Function(NotificationUserDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationUserDataModelCopyWith<$Res>
    implements $NotificationUserDataModelCopyWith<$Res> {
  factory _$$_NotificationUserDataModelCopyWith(
          _$_NotificationUserDataModel value,
          $Res Function(_$_NotificationUserDataModel) then) =
      __$$_NotificationUserDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? firstname, String? lastname, String? picture});
}

/// @nodoc
class __$$_NotificationUserDataModelCopyWithImpl<$Res>
    extends _$NotificationUserDataModelCopyWithImpl<$Res>
    implements _$$_NotificationUserDataModelCopyWith<$Res> {
  __$$_NotificationUserDataModelCopyWithImpl(
      _$_NotificationUserDataModel _value,
      $Res Function(_$_NotificationUserDataModel) _then)
      : super(_value, (v) => _then(v as _$_NotificationUserDataModel));

  @override
  _$_NotificationUserDataModel get _value =>
      super._value as _$_NotificationUserDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_NotificationUserDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationUserDataModel implements _NotificationUserDataModel {
  const _$_NotificationUserDataModel(
      {this.id, this.firstname, this.lastname, this.picture});

  factory _$_NotificationUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationUserDataModelFromJson(json);

  @override
  final String? id;

  /// Prénom
  @override
  final String? firstname;

  /// Nom
  @override
  final String? lastname;

  /// Url de la photo de profil
  @override
  final String? picture;

  @override
  String toString() {
    return 'NotificationUserDataModel(id: $id, firstname: $firstname, lastname: $lastname, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationUserDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationUserDataModelCopyWith<_$_NotificationUserDataModel>
      get copyWith => __$$_NotificationUserDataModelCopyWithImpl<
          _$_NotificationUserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationUserDataModelToJson(
      this,
    );
  }
}

abstract class _NotificationUserDataModel implements NotificationUserDataModel {
  const factory _NotificationUserDataModel(
      {final String? id,
      final String? firstname,
      final String? lastname,
      final String? picture}) = _$_NotificationUserDataModel;

  factory _NotificationUserDataModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationUserDataModel.fromJson;

  @override
  String? get id;
  @override

  /// Prénom
  String? get firstname;
  @override

  /// Nom
  String? get lastname;
  @override

  /// Url de la photo de profil
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationUserDataModelCopyWith<_$_NotificationUserDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
