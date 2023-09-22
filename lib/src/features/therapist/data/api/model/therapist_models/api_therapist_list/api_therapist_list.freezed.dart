// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_therapist_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiTherapistList _$ApiTherapistListFromJson(Map<String, dynamic> json) {
  return _ApiTherapistList.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapistList {
  List<ApiTherapist> get items => throw _privateConstructorUsedError;
  String? get nextPageCursor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistListCopyWith<ApiTherapistList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistListCopyWith<$Res> {
  factory $ApiTherapistListCopyWith(
          ApiTherapistList value, $Res Function(ApiTherapistList) then) =
      _$ApiTherapistListCopyWithImpl<$Res, ApiTherapistList>;
  @useResult
  $Res call({List<ApiTherapist> items, String? nextPageCursor});
}

/// @nodoc
class _$ApiTherapistListCopyWithImpl<$Res, $Val extends ApiTherapistList>
    implements $ApiTherapistListCopyWith<$Res> {
  _$ApiTherapistListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextPageCursor = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapist>,
      nextPageCursor: freezed == nextPageCursor
          ? _value.nextPageCursor
          : nextPageCursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTherapistListCopyWith<$Res>
    implements $ApiTherapistListCopyWith<$Res> {
  factory _$$_ApiTherapistListCopyWith(
          _$_ApiTherapistList value, $Res Function(_$_ApiTherapistList) then) =
      __$$_ApiTherapistListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ApiTherapist> items, String? nextPageCursor});
}

/// @nodoc
class __$$_ApiTherapistListCopyWithImpl<$Res>
    extends _$ApiTherapistListCopyWithImpl<$Res, _$_ApiTherapistList>
    implements _$$_ApiTherapistListCopyWith<$Res> {
  __$$_ApiTherapistListCopyWithImpl(
      _$_ApiTherapistList _value, $Res Function(_$_ApiTherapistList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextPageCursor = freezed,
  }) {
    return _then(_$_ApiTherapistList(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapist>,
      nextPageCursor: freezed == nextPageCursor
          ? _value.nextPageCursor
          : nextPageCursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapistList implements _ApiTherapistList {
  _$_ApiTherapistList(
      {required final List<ApiTherapist> items, this.nextPageCursor})
      : _items = items;

  factory _$_ApiTherapistList.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistListFromJson(json);

  final List<ApiTherapist> _items;
  @override
  List<ApiTherapist> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextPageCursor;

  @override
  String toString() {
    return 'ApiTherapistList(items: $items, nextPageCursor: $nextPageCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapistList &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextPageCursor, nextPageCursor) ||
                other.nextPageCursor == nextPageCursor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), nextPageCursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistListCopyWith<_$_ApiTherapistList> get copyWith =>
      __$$_ApiTherapistListCopyWithImpl<_$_ApiTherapistList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistListToJson(
      this,
    );
  }
}

abstract class _ApiTherapistList implements ApiTherapistList {
  factory _ApiTherapistList(
      {required final List<ApiTherapist> items,
      final String? nextPageCursor}) = _$_ApiTherapistList;

  factory _ApiTherapistList.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapistList.fromJson;

  @override
  List<ApiTherapist> get items;
  @override
  String? get nextPageCursor;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistListCopyWith<_$_ApiTherapistList> get copyWith =>
      throw _privateConstructorUsedError;
}
