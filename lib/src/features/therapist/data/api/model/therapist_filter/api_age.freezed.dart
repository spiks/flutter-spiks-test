// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiAge _$ApiAgeFromJson(Map<String, dynamic> json) {
  return _ApiAge.fromJson(json);
}

/// @nodoc
mixin _$ApiAge {
  int get from => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAgeCopyWith<ApiAge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAgeCopyWith<$Res> {
  factory $ApiAgeCopyWith(ApiAge value, $Res Function(ApiAge) then) =
      _$ApiAgeCopyWithImpl<$Res, ApiAge>;
  @useResult
  $Res call({int from, int to});
}

/// @nodoc
class _$ApiAgeCopyWithImpl<$Res, $Val extends ApiAge>
    implements $ApiAgeCopyWith<$Res> {
  _$ApiAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiAgeCopyWith<$Res> implements $ApiAgeCopyWith<$Res> {
  factory _$$_ApiAgeCopyWith(_$_ApiAge value, $Res Function(_$_ApiAge) then) =
      __$$_ApiAgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int from, int to});
}

/// @nodoc
class __$$_ApiAgeCopyWithImpl<$Res>
    extends _$ApiAgeCopyWithImpl<$Res, _$_ApiAge>
    implements _$$_ApiAgeCopyWith<$Res> {
  __$$_ApiAgeCopyWithImpl(_$_ApiAge _value, $Res Function(_$_ApiAge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$_ApiAge(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiAge implements _ApiAge {
  _$_ApiAge({required this.from, required this.to});

  factory _$_ApiAge.fromJson(Map<String, dynamic> json) =>
      _$$_ApiAgeFromJson(json);

  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'ApiAge(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiAge &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiAgeCopyWith<_$_ApiAge> get copyWith =>
      __$$_ApiAgeCopyWithImpl<_$_ApiAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiAgeToJson(
      this,
    );
  }
}

abstract class _ApiAge implements ApiAge {
  factory _ApiAge({required final int from, required final int to}) = _$_ApiAge;

  factory _ApiAge.fromJson(Map<String, dynamic> json) = _$_ApiAge.fromJson;

  @override
  int get from;
  @override
  int get to;
  @override
  @JsonKey(ignore: true)
  _$$_ApiAgeCopyWith<_$_ApiAge> get copyWith =>
      throw _privateConstructorUsedError;
}
