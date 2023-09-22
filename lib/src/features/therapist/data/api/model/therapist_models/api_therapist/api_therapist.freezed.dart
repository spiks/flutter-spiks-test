// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_therapist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiTherapist _$ApiTherapistFromJson(Map<String, dynamic> json) {
  return _ApiTherapist.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapist {
  String? get surname => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ApiMediaImage? get avatar => throw _privateConstructorUsedError;
  String? get mainSpecialization => throw _privateConstructorUsedError;
  ApiServicePricing get servicePricing => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<ApiEmployment> get employments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistCopyWith<ApiTherapist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistCopyWith<$Res> {
  factory $ApiTherapistCopyWith(
          ApiTherapist value, $Res Function(ApiTherapist) then) =
      _$ApiTherapistCopyWithImpl<$Res, ApiTherapist>;
  @useResult
  $Res call(
      {String? surname,
      String name,
      ApiMediaImage? avatar,
      String? mainSpecialization,
      ApiServicePricing servicePricing,
      String id,
      List<ApiEmployment> employments});

  $ApiServicePricingCopyWith<$Res> get servicePricing;
}

/// @nodoc
class _$ApiTherapistCopyWithImpl<$Res, $Val extends ApiTherapist>
    implements $ApiTherapistCopyWith<$Res> {
  _$ApiTherapistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = freezed,
    Object? name = null,
    Object? avatar = freezed,
    Object? mainSpecialization = freezed,
    Object? servicePricing = null,
    Object? id = null,
    Object? employments = null,
  }) {
    return _then(_value.copyWith(
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ApiMediaImage?,
      mainSpecialization: freezed == mainSpecialization
          ? _value.mainSpecialization
          : mainSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePricing: null == servicePricing
          ? _value.servicePricing
          : servicePricing // ignore: cast_nullable_to_non_nullable
              as ApiServicePricing,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employments: null == employments
          ? _value.employments
          : employments // ignore: cast_nullable_to_non_nullable
              as List<ApiEmployment>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiServicePricingCopyWith<$Res> get servicePricing {
    return $ApiServicePricingCopyWith<$Res>(_value.servicePricing, (value) {
      return _then(_value.copyWith(servicePricing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiTherapistCopyWith<$Res>
    implements $ApiTherapistCopyWith<$Res> {
  factory _$$_ApiTherapistCopyWith(
          _$_ApiTherapist value, $Res Function(_$_ApiTherapist) then) =
      __$$_ApiTherapistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? surname,
      String name,
      ApiMediaImage? avatar,
      String? mainSpecialization,
      ApiServicePricing servicePricing,
      String id,
      List<ApiEmployment> employments});

  @override
  $ApiServicePricingCopyWith<$Res> get servicePricing;
}

/// @nodoc
class __$$_ApiTherapistCopyWithImpl<$Res>
    extends _$ApiTherapistCopyWithImpl<$Res, _$_ApiTherapist>
    implements _$$_ApiTherapistCopyWith<$Res> {
  __$$_ApiTherapistCopyWithImpl(
      _$_ApiTherapist _value, $Res Function(_$_ApiTherapist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = freezed,
    Object? name = null,
    Object? avatar = freezed,
    Object? mainSpecialization = freezed,
    Object? servicePricing = null,
    Object? id = null,
    Object? employments = null,
  }) {
    return _then(_$_ApiTherapist(
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ApiMediaImage?,
      mainSpecialization: freezed == mainSpecialization
          ? _value.mainSpecialization
          : mainSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePricing: null == servicePricing
          ? _value.servicePricing
          : servicePricing // ignore: cast_nullable_to_non_nullable
              as ApiServicePricing,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employments: null == employments
          ? _value._employments
          : employments // ignore: cast_nullable_to_non_nullable
              as List<ApiEmployment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapist implements _ApiTherapist {
  _$_ApiTherapist(
      {this.surname,
      this.name = '',
      this.avatar,
      this.mainSpecialization,
      required this.servicePricing,
      required this.id,
      required final List<ApiEmployment> employments})
      : _employments = employments;

  factory _$_ApiTherapist.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistFromJson(json);

  @override
  final String? surname;
  @override
  @JsonKey()
  final String name;
  @override
  final ApiMediaImage? avatar;
  @override
  final String? mainSpecialization;
  @override
  final ApiServicePricing servicePricing;
  @override
  final String id;
  final List<ApiEmployment> _employments;
  @override
  List<ApiEmployment> get employments {
    if (_employments is EqualUnmodifiableListView) return _employments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employments);
  }

  @override
  String toString() {
    return 'ApiTherapist(surname: $surname, name: $name, avatar: $avatar, mainSpecialization: $mainSpecialization, servicePricing: $servicePricing, id: $id, employments: $employments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapist &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.mainSpecialization, mainSpecialization) ||
                other.mainSpecialization == mainSpecialization) &&
            (identical(other.servicePricing, servicePricing) ||
                other.servicePricing == servicePricing) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._employments, _employments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      surname,
      name,
      avatar,
      mainSpecialization,
      servicePricing,
      id,
      const DeepCollectionEquality().hash(_employments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistCopyWith<_$_ApiTherapist> get copyWith =>
      __$$_ApiTherapistCopyWithImpl<_$_ApiTherapist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistToJson(
      this,
    );
  }
}

abstract class _ApiTherapist implements ApiTherapist {
  factory _ApiTherapist(
      {final String? surname,
      final String name,
      final ApiMediaImage? avatar,
      final String? mainSpecialization,
      required final ApiServicePricing servicePricing,
      required final String id,
      required final List<ApiEmployment> employments}) = _$_ApiTherapist;

  factory _ApiTherapist.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapist.fromJson;

  @override
  String? get surname;
  @override
  String get name;
  @override
  ApiMediaImage? get avatar;
  @override
  String? get mainSpecialization;
  @override
  ApiServicePricing get servicePricing;
  @override
  String get id;
  @override
  List<ApiEmployment> get employments;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistCopyWith<_$_ApiTherapist> get copyWith =>
      throw _privateConstructorUsedError;
}
