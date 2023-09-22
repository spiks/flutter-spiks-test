// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_therapist_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiTherapistDetail _$ApiTherapistDetailFromJson(Map<String, dynamic> json) {
  return _ApiTherapistDetail.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapistDetail {
  String? get surname => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get mainSpecialization => throw _privateConstructorUsedError;
  ApiMediaImage? get avatar => throw _privateConstructorUsedError;
  List<ApiEmployment> get employments => throw _privateConstructorUsedError;
  ApiServicePricing get servicePricing => throw _privateConstructorUsedError;
  List<ApiHigherEducation> get higherEducation =>
      throw _privateConstructorUsedError;
  List<ApiTreatmentTechniques> get treatmentTechniques =>
      throw _privateConstructorUsedError; // ?
  String? get workPrinciples => throw _privateConstructorUsedError; // ?
  String? get biography => throw _privateConstructorUsedError; // ?
  ApiVideoPresentation? get videoPresentation =>
      throw _privateConstructorUsedError;
  List<ApiTherapistProblemsByTypes> get problemsByTypes =>
      throw _privateConstructorUsedError;
  String? get additionalSpecializations => throw _privateConstructorUsedError;
  String? get creed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistDetailCopyWith<ApiTherapistDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistDetailCopyWith<$Res> {
  factory $ApiTherapistDetailCopyWith(
          ApiTherapistDetail value, $Res Function(ApiTherapistDetail) then) =
      _$ApiTherapistDetailCopyWithImpl<$Res, ApiTherapistDetail>;
  @useResult
  $Res call(
      {String? surname,
      String name,
      String id,
      String? mainSpecialization,
      ApiMediaImage? avatar,
      List<ApiEmployment> employments,
      ApiServicePricing servicePricing,
      List<ApiHigherEducation> higherEducation,
      List<ApiTreatmentTechniques> treatmentTechniques,
      String? workPrinciples,
      String? biography,
      ApiVideoPresentation? videoPresentation,
      List<ApiTherapistProblemsByTypes> problemsByTypes,
      String? additionalSpecializations,
      String? creed});

  $ApiServicePricingCopyWith<$Res> get servicePricing;
  $ApiVideoPresentationCopyWith<$Res>? get videoPresentation;
}

/// @nodoc
class _$ApiTherapistDetailCopyWithImpl<$Res, $Val extends ApiTherapistDetail>
    implements $ApiTherapistDetailCopyWith<$Res> {
  _$ApiTherapistDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = freezed,
    Object? name = null,
    Object? id = null,
    Object? mainSpecialization = freezed,
    Object? avatar = freezed,
    Object? employments = null,
    Object? servicePricing = null,
    Object? higherEducation = null,
    Object? treatmentTechniques = null,
    Object? workPrinciples = freezed,
    Object? biography = freezed,
    Object? videoPresentation = freezed,
    Object? problemsByTypes = null,
    Object? additionalSpecializations = freezed,
    Object? creed = freezed,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mainSpecialization: freezed == mainSpecialization
          ? _value.mainSpecialization
          : mainSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ApiMediaImage?,
      employments: null == employments
          ? _value.employments
          : employments // ignore: cast_nullable_to_non_nullable
              as List<ApiEmployment>,
      servicePricing: null == servicePricing
          ? _value.servicePricing
          : servicePricing // ignore: cast_nullable_to_non_nullable
              as ApiServicePricing,
      higherEducation: null == higherEducation
          ? _value.higherEducation
          : higherEducation // ignore: cast_nullable_to_non_nullable
              as List<ApiHigherEducation>,
      treatmentTechniques: null == treatmentTechniques
          ? _value.treatmentTechniques
          : treatmentTechniques // ignore: cast_nullable_to_non_nullable
              as List<ApiTreatmentTechniques>,
      workPrinciples: freezed == workPrinciples
          ? _value.workPrinciples
          : workPrinciples // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPresentation: freezed == videoPresentation
          ? _value.videoPresentation
          : videoPresentation // ignore: cast_nullable_to_non_nullable
              as ApiVideoPresentation?,
      problemsByTypes: null == problemsByTypes
          ? _value.problemsByTypes
          : problemsByTypes // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblemsByTypes>,
      additionalSpecializations: freezed == additionalSpecializations
          ? _value.additionalSpecializations
          : additionalSpecializations // ignore: cast_nullable_to_non_nullable
              as String?,
      creed: freezed == creed
          ? _value.creed
          : creed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiServicePricingCopyWith<$Res> get servicePricing {
    return $ApiServicePricingCopyWith<$Res>(_value.servicePricing, (value) {
      return _then(_value.copyWith(servicePricing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiVideoPresentationCopyWith<$Res>? get videoPresentation {
    if (_value.videoPresentation == null) {
      return null;
    }

    return $ApiVideoPresentationCopyWith<$Res>(_value.videoPresentation!,
        (value) {
      return _then(_value.copyWith(videoPresentation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiTherapistDetailCopyWith<$Res>
    implements $ApiTherapistDetailCopyWith<$Res> {
  factory _$$_ApiTherapistDetailCopyWith(_$_ApiTherapistDetail value,
          $Res Function(_$_ApiTherapistDetail) then) =
      __$$_ApiTherapistDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? surname,
      String name,
      String id,
      String? mainSpecialization,
      ApiMediaImage? avatar,
      List<ApiEmployment> employments,
      ApiServicePricing servicePricing,
      List<ApiHigherEducation> higherEducation,
      List<ApiTreatmentTechniques> treatmentTechniques,
      String? workPrinciples,
      String? biography,
      ApiVideoPresentation? videoPresentation,
      List<ApiTherapistProblemsByTypes> problemsByTypes,
      String? additionalSpecializations,
      String? creed});

  @override
  $ApiServicePricingCopyWith<$Res> get servicePricing;
  @override
  $ApiVideoPresentationCopyWith<$Res>? get videoPresentation;
}

/// @nodoc
class __$$_ApiTherapistDetailCopyWithImpl<$Res>
    extends _$ApiTherapistDetailCopyWithImpl<$Res, _$_ApiTherapistDetail>
    implements _$$_ApiTherapistDetailCopyWith<$Res> {
  __$$_ApiTherapistDetailCopyWithImpl(
      _$_ApiTherapistDetail _value, $Res Function(_$_ApiTherapistDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = freezed,
    Object? name = null,
    Object? id = null,
    Object? mainSpecialization = freezed,
    Object? avatar = freezed,
    Object? employments = null,
    Object? servicePricing = null,
    Object? higherEducation = null,
    Object? treatmentTechniques = null,
    Object? workPrinciples = freezed,
    Object? biography = freezed,
    Object? videoPresentation = freezed,
    Object? problemsByTypes = null,
    Object? additionalSpecializations = freezed,
    Object? creed = freezed,
  }) {
    return _then(_$_ApiTherapistDetail(
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mainSpecialization: freezed == mainSpecialization
          ? _value.mainSpecialization
          : mainSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ApiMediaImage?,
      employments: null == employments
          ? _value._employments
          : employments // ignore: cast_nullable_to_non_nullable
              as List<ApiEmployment>,
      servicePricing: null == servicePricing
          ? _value.servicePricing
          : servicePricing // ignore: cast_nullable_to_non_nullable
              as ApiServicePricing,
      higherEducation: null == higherEducation
          ? _value._higherEducation
          : higherEducation // ignore: cast_nullable_to_non_nullable
              as List<ApiHigherEducation>,
      treatmentTechniques: null == treatmentTechniques
          ? _value._treatmentTechniques
          : treatmentTechniques // ignore: cast_nullable_to_non_nullable
              as List<ApiTreatmentTechniques>,
      workPrinciples: freezed == workPrinciples
          ? _value.workPrinciples
          : workPrinciples // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPresentation: freezed == videoPresentation
          ? _value.videoPresentation
          : videoPresentation // ignore: cast_nullable_to_non_nullable
              as ApiVideoPresentation?,
      problemsByTypes: null == problemsByTypes
          ? _value._problemsByTypes
          : problemsByTypes // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblemsByTypes>,
      additionalSpecializations: freezed == additionalSpecializations
          ? _value.additionalSpecializations
          : additionalSpecializations // ignore: cast_nullable_to_non_nullable
              as String?,
      creed: freezed == creed
          ? _value.creed
          : creed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapistDetail implements _ApiTherapistDetail {
  _$_ApiTherapistDetail(
      {required this.surname,
      this.name = '',
      required this.id,
      required this.mainSpecialization,
      this.avatar,
      required final List<ApiEmployment> employments,
      required this.servicePricing,
      required final List<ApiHigherEducation> higherEducation,
      required final List<ApiTreatmentTechniques> treatmentTechniques,
      required this.workPrinciples,
      required this.biography,
      required this.videoPresentation,
      required final List<ApiTherapistProblemsByTypes> problemsByTypes,
      this.additionalSpecializations,
      this.creed})
      : _employments = employments,
        _higherEducation = higherEducation,
        _treatmentTechniques = treatmentTechniques,
        _problemsByTypes = problemsByTypes;

  factory _$_ApiTherapistDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistDetailFromJson(json);

  @override
  final String? surname;
  @override
  @JsonKey()
  final String name;
  @override
  final String id;
  @override
  final String? mainSpecialization;
  @override
  final ApiMediaImage? avatar;
  final List<ApiEmployment> _employments;
  @override
  List<ApiEmployment> get employments {
    if (_employments is EqualUnmodifiableListView) return _employments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employments);
  }

  @override
  final ApiServicePricing servicePricing;
  final List<ApiHigherEducation> _higherEducation;
  @override
  List<ApiHigherEducation> get higherEducation {
    if (_higherEducation is EqualUnmodifiableListView) return _higherEducation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_higherEducation);
  }

  final List<ApiTreatmentTechniques> _treatmentTechniques;
  @override
  List<ApiTreatmentTechniques> get treatmentTechniques {
    if (_treatmentTechniques is EqualUnmodifiableListView)
      return _treatmentTechniques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treatmentTechniques);
  }

// ?
  @override
  final String? workPrinciples;
// ?
  @override
  final String? biography;
// ?
  @override
  final ApiVideoPresentation? videoPresentation;
  final List<ApiTherapistProblemsByTypes> _problemsByTypes;
  @override
  List<ApiTherapistProblemsByTypes> get problemsByTypes {
    if (_problemsByTypes is EqualUnmodifiableListView) return _problemsByTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problemsByTypes);
  }

  @override
  final String? additionalSpecializations;
  @override
  final String? creed;

  @override
  String toString() {
    return 'ApiTherapistDetail(surname: $surname, name: $name, id: $id, mainSpecialization: $mainSpecialization, avatar: $avatar, employments: $employments, servicePricing: $servicePricing, higherEducation: $higherEducation, treatmentTechniques: $treatmentTechniques, workPrinciples: $workPrinciples, biography: $biography, videoPresentation: $videoPresentation, problemsByTypes: $problemsByTypes, additionalSpecializations: $additionalSpecializations, creed: $creed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapistDetail &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainSpecialization, mainSpecialization) ||
                other.mainSpecialization == mainSpecialization) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality()
                .equals(other._employments, _employments) &&
            (identical(other.servicePricing, servicePricing) ||
                other.servicePricing == servicePricing) &&
            const DeepCollectionEquality()
                .equals(other._higherEducation, _higherEducation) &&
            const DeepCollectionEquality()
                .equals(other._treatmentTechniques, _treatmentTechniques) &&
            (identical(other.workPrinciples, workPrinciples) ||
                other.workPrinciples == workPrinciples) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.videoPresentation, videoPresentation) ||
                other.videoPresentation == videoPresentation) &&
            const DeepCollectionEquality()
                .equals(other._problemsByTypes, _problemsByTypes) &&
            (identical(other.additionalSpecializations,
                    additionalSpecializations) ||
                other.additionalSpecializations == additionalSpecializations) &&
            (identical(other.creed, creed) || other.creed == creed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      surname,
      name,
      id,
      mainSpecialization,
      avatar,
      const DeepCollectionEquality().hash(_employments),
      servicePricing,
      const DeepCollectionEquality().hash(_higherEducation),
      const DeepCollectionEquality().hash(_treatmentTechniques),
      workPrinciples,
      biography,
      videoPresentation,
      const DeepCollectionEquality().hash(_problemsByTypes),
      additionalSpecializations,
      creed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistDetailCopyWith<_$_ApiTherapistDetail> get copyWith =>
      __$$_ApiTherapistDetailCopyWithImpl<_$_ApiTherapistDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistDetailToJson(
      this,
    );
  }
}

abstract class _ApiTherapistDetail implements ApiTherapistDetail {
  factory _ApiTherapistDetail(
      {required final String? surname,
      final String name,
      required final String id,
      required final String? mainSpecialization,
      final ApiMediaImage? avatar,
      required final List<ApiEmployment> employments,
      required final ApiServicePricing servicePricing,
      required final List<ApiHigherEducation> higherEducation,
      required final List<ApiTreatmentTechniques> treatmentTechniques,
      required final String? workPrinciples,
      required final String? biography,
      required final ApiVideoPresentation? videoPresentation,
      required final List<ApiTherapistProblemsByTypes> problemsByTypes,
      final String? additionalSpecializations,
      final String? creed}) = _$_ApiTherapistDetail;

  factory _ApiTherapistDetail.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapistDetail.fromJson;

  @override
  String? get surname;
  @override
  String get name;
  @override
  String get id;
  @override
  String? get mainSpecialization;
  @override
  ApiMediaImage? get avatar;
  @override
  List<ApiEmployment> get employments;
  @override
  ApiServicePricing get servicePricing;
  @override
  List<ApiHigherEducation> get higherEducation;
  @override
  List<ApiTreatmentTechniques> get treatmentTechniques;
  @override // ?
  String? get workPrinciples;
  @override // ?
  String? get biography;
  @override // ?
  ApiVideoPresentation? get videoPresentation;
  @override
  List<ApiTherapistProblemsByTypes> get problemsByTypes;
  @override
  String? get additionalSpecializations;
  @override
  String? get creed;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistDetailCopyWith<_$_ApiTherapistDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
