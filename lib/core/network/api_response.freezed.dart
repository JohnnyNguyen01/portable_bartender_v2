// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

  _ApiResponseModel call(
      {int? statusCode, String? message, Map<String, dynamic>? payload}) {
    return _ApiResponseModel(
      statusCode: statusCode,
      message: message,
      payload: payload,
    );
  }
}

/// @nodoc
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message, Map<String, dynamic>? payload});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res> implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse _value;
  // ignore: unused_field
  final $Res Function(ApiResponse) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$ApiResponseModelCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$ApiResponseModelCopyWith(
          _ApiResponseModel value, $Res Function(_ApiResponseModel) then) =
      __$ApiResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message, Map<String, dynamic>? payload});
}

/// @nodoc
class __$ApiResponseModelCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res>
    implements _$ApiResponseModelCopyWith<$Res> {
  __$ApiResponseModelCopyWithImpl(
      _ApiResponseModel _value, $Res Function(_ApiResponseModel) _then)
      : super(_value, (v) => _then(v as _ApiResponseModel));

  @override
  _ApiResponseModel get _value => super._value as _ApiResponseModel;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_ApiResponseModel(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ApiResponseModel implements _ApiResponseModel {
  const _$_ApiResponseModel({this.statusCode, this.message, this.payload});

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final Map<String, dynamic>? payload;

  @override
  String toString() {
    return 'ApiResponse(statusCode: $statusCode, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponseModel &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$ApiResponseModelCopyWith<_ApiResponseModel> get copyWith =>
      __$ApiResponseModelCopyWithImpl<_ApiResponseModel>(this, _$identity);
}

abstract class _ApiResponseModel implements ApiResponse {
  const factory _ApiResponseModel(
      {int? statusCode,
      String? message,
      Map<String, dynamic>? payload}) = _$_ApiResponseModel;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get payload;
  @override
  @JsonKey(ignore: true)
  _$ApiResponseModelCopyWith<_ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
