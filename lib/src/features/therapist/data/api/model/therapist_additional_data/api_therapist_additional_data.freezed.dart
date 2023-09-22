// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_therapist_additional_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiEmployment _$ApiEmploymentFromJson(Map<String, dynamic> json) {
  return _ApiEmployment.fromJson(json);
}

/// @nodoc
mixin _$ApiEmployment {
  int get years => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiEmploymentCopyWith<ApiEmployment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEmploymentCopyWith<$Res> {
  factory $ApiEmploymentCopyWith(
          ApiEmployment value, $Res Function(ApiEmployment) then) =
      _$ApiEmploymentCopyWithImpl<$Res, ApiEmployment>;
  @useResult
  $Res call({int years, String companyName});
}

/// @nodoc
class _$ApiEmploymentCopyWithImpl<$Res, $Val extends ApiEmployment>
    implements $ApiEmploymentCopyWith<$Res> {
  _$ApiEmploymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
    Object? companyName = null,
  }) {
    return _then(_value.copyWith(
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiEmploymentCopyWith<$Res>
    implements $ApiEmploymentCopyWith<$Res> {
  factory _$$_ApiEmploymentCopyWith(
          _$_ApiEmployment value, $Res Function(_$_ApiEmployment) then) =
      __$$_ApiEmploymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int years, String companyName});
}

/// @nodoc
class __$$_ApiEmploymentCopyWithImpl<$Res>
    extends _$ApiEmploymentCopyWithImpl<$Res, _$_ApiEmployment>
    implements _$$_ApiEmploymentCopyWith<$Res> {
  __$$_ApiEmploymentCopyWithImpl(
      _$_ApiEmployment _value, $Res Function(_$_ApiEmployment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
    Object? companyName = null,
  }) {
    return _then(_$_ApiEmployment(
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiEmployment implements _ApiEmployment {
  _$_ApiEmployment({required this.years, required this.companyName});

  factory _$_ApiEmployment.fromJson(Map<String, dynamic> json) =>
      _$$_ApiEmploymentFromJson(json);

  @override
  final int years;
  @override
  final String companyName;

  @override
  String toString() {
    return 'ApiEmployment(years: $years, companyName: $companyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiEmployment &&
            (identical(other.years, years) || other.years == years) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, years, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiEmploymentCopyWith<_$_ApiEmployment> get copyWith =>
      __$$_ApiEmploymentCopyWithImpl<_$_ApiEmployment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiEmploymentToJson(
      this,
    );
  }
}

abstract class _ApiEmployment implements ApiEmployment {
  factory _ApiEmployment(
      {required final int years,
      required final String companyName}) = _$_ApiEmployment;

  factory _ApiEmployment.fromJson(Map<String, dynamic> json) =
      _$_ApiEmployment.fromJson;

  @override
  int get years;
  @override
  String get companyName;
  @override
  @JsonKey(ignore: true)
  _$$_ApiEmploymentCopyWith<_$_ApiEmployment> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiServicePricing _$ApiServicePricingFromJson(Map<String, dynamic> json) {
  return _ApiServicePricing.fromJson(json);
}

/// @nodoc
mixin _$ApiServicePricing {
  int? get forIndividualSession => throw _privateConstructorUsedError;
  int? get forPairSession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiServicePricingCopyWith<ApiServicePricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiServicePricingCopyWith<$Res> {
  factory $ApiServicePricingCopyWith(
          ApiServicePricing value, $Res Function(ApiServicePricing) then) =
      _$ApiServicePricingCopyWithImpl<$Res, ApiServicePricing>;
  @useResult
  $Res call({int? forIndividualSession, int? forPairSession});
}

/// @nodoc
class _$ApiServicePricingCopyWithImpl<$Res, $Val extends ApiServicePricing>
    implements $ApiServicePricingCopyWith<$Res> {
  _$ApiServicePricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forIndividualSession = freezed,
    Object? forPairSession = freezed,
  }) {
    return _then(_value.copyWith(
      forIndividualSession: freezed == forIndividualSession
          ? _value.forIndividualSession
          : forIndividualSession // ignore: cast_nullable_to_non_nullable
              as int?,
      forPairSession: freezed == forPairSession
          ? _value.forPairSession
          : forPairSession // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiServicePricingCopyWith<$Res>
    implements $ApiServicePricingCopyWith<$Res> {
  factory _$$_ApiServicePricingCopyWith(_$_ApiServicePricing value,
          $Res Function(_$_ApiServicePricing) then) =
      __$$_ApiServicePricingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? forIndividualSession, int? forPairSession});
}

/// @nodoc
class __$$_ApiServicePricingCopyWithImpl<$Res>
    extends _$ApiServicePricingCopyWithImpl<$Res, _$_ApiServicePricing>
    implements _$$_ApiServicePricingCopyWith<$Res> {
  __$$_ApiServicePricingCopyWithImpl(
      _$_ApiServicePricing _value, $Res Function(_$_ApiServicePricing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forIndividualSession = freezed,
    Object? forPairSession = freezed,
  }) {
    return _then(_$_ApiServicePricing(
      forIndividualSession: freezed == forIndividualSession
          ? _value.forIndividualSession
          : forIndividualSession // ignore: cast_nullable_to_non_nullable
              as int?,
      forPairSession: freezed == forPairSession
          ? _value.forPairSession
          : forPairSession // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiServicePricing implements _ApiServicePricing {
  _$_ApiServicePricing({this.forIndividualSession, this.forPairSession});

  factory _$_ApiServicePricing.fromJson(Map<String, dynamic> json) =>
      _$$_ApiServicePricingFromJson(json);

  @override
  final int? forIndividualSession;
  @override
  final int? forPairSession;

  @override
  String toString() {
    return 'ApiServicePricing(forIndividualSession: $forIndividualSession, forPairSession: $forPairSession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiServicePricing &&
            (identical(other.forIndividualSession, forIndividualSession) ||
                other.forIndividualSession == forIndividualSession) &&
            (identical(other.forPairSession, forPairSession) ||
                other.forPairSession == forPairSession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, forIndividualSession, forPairSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiServicePricingCopyWith<_$_ApiServicePricing> get copyWith =>
      __$$_ApiServicePricingCopyWithImpl<_$_ApiServicePricing>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiServicePricingToJson(
      this,
    );
  }
}

abstract class _ApiServicePricing implements ApiServicePricing {
  factory _ApiServicePricing(
      {final int? forIndividualSession,
      final int? forPairSession}) = _$_ApiServicePricing;

  factory _ApiServicePricing.fromJson(Map<String, dynamic> json) =
      _$_ApiServicePricing.fromJson;

  @override
  int? get forIndividualSession;
  @override
  int? get forPairSession;
  @override
  @JsonKey(ignore: true)
  _$$_ApiServicePricingCopyWith<_$_ApiServicePricing> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiHigherEducation _$ApiHigherEducationFromJson(Map<String, dynamic> json) {
  return _ApiHigherEducation.fromJson(json);
}

/// @nodoc
mixin _$ApiHigherEducation {
  String get country => throw _privateConstructorUsedError;
  String get educationalInstitution => throw _privateConstructorUsedError;
  String get speciality => throw _privateConstructorUsedError;
  int get graduationYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiHigherEducationCopyWith<ApiHigherEducation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiHigherEducationCopyWith<$Res> {
  factory $ApiHigherEducationCopyWith(
          ApiHigherEducation value, $Res Function(ApiHigherEducation) then) =
      _$ApiHigherEducationCopyWithImpl<$Res, ApiHigherEducation>;
  @useResult
  $Res call(
      {String country,
      String educationalInstitution,
      String speciality,
      int graduationYear});
}

/// @nodoc
class _$ApiHigherEducationCopyWithImpl<$Res, $Val extends ApiHigherEducation>
    implements $ApiHigherEducationCopyWith<$Res> {
  _$ApiHigherEducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? educationalInstitution = null,
    Object? speciality = null,
    Object? graduationYear = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      educationalInstitution: null == educationalInstitution
          ? _value.educationalInstitution
          : educationalInstitution // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: null == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String,
      graduationYear: null == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiHigherEducationCopyWith<$Res>
    implements $ApiHigherEducationCopyWith<$Res> {
  factory _$$_ApiHigherEducationCopyWith(_$_ApiHigherEducation value,
          $Res Function(_$_ApiHigherEducation) then) =
      __$$_ApiHigherEducationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String educationalInstitution,
      String speciality,
      int graduationYear});
}

/// @nodoc
class __$$_ApiHigherEducationCopyWithImpl<$Res>
    extends _$ApiHigherEducationCopyWithImpl<$Res, _$_ApiHigherEducation>
    implements _$$_ApiHigherEducationCopyWith<$Res> {
  __$$_ApiHigherEducationCopyWithImpl(
      _$_ApiHigherEducation _value, $Res Function(_$_ApiHigherEducation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? educationalInstitution = null,
    Object? speciality = null,
    Object? graduationYear = null,
  }) {
    return _then(_$_ApiHigherEducation(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      educationalInstitution: null == educationalInstitution
          ? _value.educationalInstitution
          : educationalInstitution // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: null == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String,
      graduationYear: null == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiHigherEducation implements _ApiHigherEducation {
  _$_ApiHigherEducation(
      {required this.country,
      required this.educationalInstitution,
      required this.speciality,
      required this.graduationYear});

  factory _$_ApiHigherEducation.fromJson(Map<String, dynamic> json) =>
      _$$_ApiHigherEducationFromJson(json);

  @override
  final String country;
  @override
  final String educationalInstitution;
  @override
  final String speciality;
  @override
  final int graduationYear;

  @override
  String toString() {
    return 'ApiHigherEducation(country: $country, educationalInstitution: $educationalInstitution, speciality: $speciality, graduationYear: $graduationYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiHigherEducation &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.educationalInstitution, educationalInstitution) ||
                other.educationalInstitution == educationalInstitution) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            (identical(other.graduationYear, graduationYear) ||
                other.graduationYear == graduationYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, country, educationalInstitution, speciality, graduationYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiHigherEducationCopyWith<_$_ApiHigherEducation> get copyWith =>
      __$$_ApiHigherEducationCopyWithImpl<_$_ApiHigherEducation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiHigherEducationToJson(
      this,
    );
  }
}

abstract class _ApiHigherEducation implements ApiHigherEducation {
  factory _ApiHigherEducation(
      {required final String country,
      required final String educationalInstitution,
      required final String speciality,
      required final int graduationYear}) = _$_ApiHigherEducation;

  factory _ApiHigherEducation.fromJson(Map<String, dynamic> json) =
      _$_ApiHigherEducation.fromJson;

  @override
  String get country;
  @override
  String get educationalInstitution;
  @override
  String get speciality;
  @override
  int get graduationYear;
  @override
  @JsonKey(ignore: true)
  _$$_ApiHigherEducationCopyWith<_$_ApiHigherEducation> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTreatmentTechniques _$ApiTreatmentTechniquesFromJson(
    Map<String, dynamic> json) {
  return _ApiTreatmentTechniques.fromJson(json);
}

/// @nodoc
mixin _$ApiTreatmentTechniques {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTreatmentTechniquesCopyWith<ApiTreatmentTechniques> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTreatmentTechniquesCopyWith<$Res> {
  factory $ApiTreatmentTechniquesCopyWith(ApiTreatmentTechniques value,
          $Res Function(ApiTreatmentTechniques) then) =
      _$ApiTreatmentTechniquesCopyWithImpl<$Res, ApiTreatmentTechniques>;
  @useResult
  $Res call({String url, String title, String author});
}

/// @nodoc
class _$ApiTreatmentTechniquesCopyWithImpl<$Res,
        $Val extends ApiTreatmentTechniques>
    implements $ApiTreatmentTechniquesCopyWith<$Res> {
  _$ApiTreatmentTechniquesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTreatmentTechniquesCopyWith<$Res>
    implements $ApiTreatmentTechniquesCopyWith<$Res> {
  factory _$$_ApiTreatmentTechniquesCopyWith(_$_ApiTreatmentTechniques value,
          $Res Function(_$_ApiTreatmentTechniques) then) =
      __$$_ApiTreatmentTechniquesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title, String author});
}

/// @nodoc
class __$$_ApiTreatmentTechniquesCopyWithImpl<$Res>
    extends _$ApiTreatmentTechniquesCopyWithImpl<$Res,
        _$_ApiTreatmentTechniques>
    implements _$$_ApiTreatmentTechniquesCopyWith<$Res> {
  __$$_ApiTreatmentTechniquesCopyWithImpl(_$_ApiTreatmentTechniques _value,
      $Res Function(_$_ApiTreatmentTechniques) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? author = null,
  }) {
    return _then(_$_ApiTreatmentTechniques(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTreatmentTechniques implements _ApiTreatmentTechniques {
  _$_ApiTreatmentTechniques(
      {required this.url, required this.title, required this.author});

  factory _$_ApiTreatmentTechniques.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTreatmentTechniquesFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final String author;

  @override
  String toString() {
    return 'ApiTreatmentTechniques(url: $url, title: $title, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTreatmentTechniques &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTreatmentTechniquesCopyWith<_$_ApiTreatmentTechniques> get copyWith =>
      __$$_ApiTreatmentTechniquesCopyWithImpl<_$_ApiTreatmentTechniques>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTreatmentTechniquesToJson(
      this,
    );
  }
}

abstract class _ApiTreatmentTechniques implements ApiTreatmentTechniques {
  factory _ApiTreatmentTechniques(
      {required final String url,
      required final String title,
      required final String author}) = _$_ApiTreatmentTechniques;

  factory _ApiTreatmentTechniques.fromJson(Map<String, dynamic> json) =
      _$_ApiTreatmentTechniques.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTreatmentTechniquesCopyWith<_$_ApiTreatmentTechniques> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiVideoPresentation _$ApiVideoPresentationFromJson(Map<String, dynamic> json) {
  return _ApiVideoPresentation.fromJson(json);
}

/// @nodoc
mixin _$ApiVideoPresentation {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiVideoPresentationCopyWith<ApiVideoPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiVideoPresentationCopyWith<$Res> {
  factory $ApiVideoPresentationCopyWith(ApiVideoPresentation value,
          $Res Function(ApiVideoPresentation) then) =
      _$ApiVideoPresentationCopyWithImpl<$Res, ApiVideoPresentation>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ApiVideoPresentationCopyWithImpl<$Res,
        $Val extends ApiVideoPresentation>
    implements $ApiVideoPresentationCopyWith<$Res> {
  _$ApiVideoPresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiVideoPresentationCopyWith<$Res>
    implements $ApiVideoPresentationCopyWith<$Res> {
  factory _$$_ApiVideoPresentationCopyWith(_$_ApiVideoPresentation value,
          $Res Function(_$_ApiVideoPresentation) then) =
      __$$_ApiVideoPresentationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_ApiVideoPresentationCopyWithImpl<$Res>
    extends _$ApiVideoPresentationCopyWithImpl<$Res, _$_ApiVideoPresentation>
    implements _$$_ApiVideoPresentationCopyWith<$Res> {
  __$$_ApiVideoPresentationCopyWithImpl(_$_ApiVideoPresentation _value,
      $Res Function(_$_ApiVideoPresentation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_ApiVideoPresentation(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiVideoPresentation implements _ApiVideoPresentation {
  _$_ApiVideoPresentation({required this.url});

  factory _$_ApiVideoPresentation.fromJson(Map<String, dynamic> json) =>
      _$$_ApiVideoPresentationFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ApiVideoPresentation(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiVideoPresentation &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiVideoPresentationCopyWith<_$_ApiVideoPresentation> get copyWith =>
      __$$_ApiVideoPresentationCopyWithImpl<_$_ApiVideoPresentation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiVideoPresentationToJson(
      this,
    );
  }
}

abstract class _ApiVideoPresentation implements ApiVideoPresentation {
  factory _ApiVideoPresentation({required final String url}) =
      _$_ApiVideoPresentation;

  factory _ApiVideoPresentation.fromJson(Map<String, dynamic> json) =
      _$_ApiVideoPresentation.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ApiVideoPresentationCopyWith<_$_ApiVideoPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTherapistProblemByGroup _$ApiTherapistProblemByGroupFromJson(
    Map<String, dynamic> json) {
  return _ApiTherapistProblemByGroup.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapistProblemByGroup {
  String get groupName => throw _privateConstructorUsedError;
  List<ApiTherapistProblem> get problems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistProblemByGroupCopyWith<ApiTherapistProblemByGroup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistProblemByGroupCopyWith<$Res> {
  factory $ApiTherapistProblemByGroupCopyWith(ApiTherapistProblemByGroup value,
          $Res Function(ApiTherapistProblemByGroup) then) =
      _$ApiTherapistProblemByGroupCopyWithImpl<$Res,
          ApiTherapistProblemByGroup>;
  @useResult
  $Res call({String groupName, List<ApiTherapistProblem> problems});
}

/// @nodoc
class _$ApiTherapistProblemByGroupCopyWithImpl<$Res,
        $Val extends ApiTherapistProblemByGroup>
    implements $ApiTherapistProblemByGroupCopyWith<$Res> {
  _$ApiTherapistProblemByGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? problems = null,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      problems: null == problems
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTherapistProblemByGroupCopyWith<$Res>
    implements $ApiTherapistProblemByGroupCopyWith<$Res> {
  factory _$$_ApiTherapistProblemByGroupCopyWith(
          _$_ApiTherapistProblemByGroup value,
          $Res Function(_$_ApiTherapistProblemByGroup) then) =
      __$$_ApiTherapistProblemByGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupName, List<ApiTherapistProblem> problems});
}

/// @nodoc
class __$$_ApiTherapistProblemByGroupCopyWithImpl<$Res>
    extends _$ApiTherapistProblemByGroupCopyWithImpl<$Res,
        _$_ApiTherapistProblemByGroup>
    implements _$$_ApiTherapistProblemByGroupCopyWith<$Res> {
  __$$_ApiTherapistProblemByGroupCopyWithImpl(
      _$_ApiTherapistProblemByGroup _value,
      $Res Function(_$_ApiTherapistProblemByGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? problems = null,
  }) {
    return _then(_$_ApiTherapistProblemByGroup(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      problems: null == problems
          ? _value._problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapistProblemByGroup implements _ApiTherapistProblemByGroup {
  _$_ApiTherapistProblemByGroup(
      {required this.groupName,
      required final List<ApiTherapistProblem> problems})
      : _problems = problems;

  factory _$_ApiTherapistProblemByGroup.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistProblemByGroupFromJson(json);

  @override
  final String groupName;
  final List<ApiTherapistProblem> _problems;
  @override
  List<ApiTherapistProblem> get problems {
    if (_problems is EqualUnmodifiableListView) return _problems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problems);
  }

  @override
  String toString() {
    return 'ApiTherapistProblemByGroup(groupName: $groupName, problems: $problems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapistProblemByGroup &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality().equals(other._problems, _problems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupName, const DeepCollectionEquality().hash(_problems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistProblemByGroupCopyWith<_$_ApiTherapistProblemByGroup>
      get copyWith => __$$_ApiTherapistProblemByGroupCopyWithImpl<
          _$_ApiTherapistProblemByGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistProblemByGroupToJson(
      this,
    );
  }
}

abstract class _ApiTherapistProblemByGroup
    implements ApiTherapistProblemByGroup {
  factory _ApiTherapistProblemByGroup(
          {required final String groupName,
          required final List<ApiTherapistProblem> problems}) =
      _$_ApiTherapistProblemByGroup;

  factory _ApiTherapistProblemByGroup.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapistProblemByGroup.fromJson;

  @override
  String get groupName;
  @override
  List<ApiTherapistProblem> get problems;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistProblemByGroupCopyWith<_$_ApiTherapistProblemByGroup>
      get copyWith => throw _privateConstructorUsedError;
}

ApiTherapistProblem _$ApiTherapistProblemFromJson(Map<String, dynamic> json) {
  return _ApiTherapistProblem.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapistProblem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistProblemCopyWith<ApiTherapistProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistProblemCopyWith<$Res> {
  factory $ApiTherapistProblemCopyWith(
          ApiTherapistProblem value, $Res Function(ApiTherapistProblem) then) =
      _$ApiTherapistProblemCopyWithImpl<$Res, ApiTherapistProblem>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ApiTherapistProblemCopyWithImpl<$Res, $Val extends ApiTherapistProblem>
    implements $ApiTherapistProblemCopyWith<$Res> {
  _$ApiTherapistProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTherapistProblemCopyWith<$Res>
    implements $ApiTherapistProblemCopyWith<$Res> {
  factory _$$_ApiTherapistProblemCopyWith(_$_ApiTherapistProblem value,
          $Res Function(_$_ApiTherapistProblem) then) =
      __$$_ApiTherapistProblemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ApiTherapistProblemCopyWithImpl<$Res>
    extends _$ApiTherapistProblemCopyWithImpl<$Res, _$_ApiTherapistProblem>
    implements _$$_ApiTherapistProblemCopyWith<$Res> {
  __$$_ApiTherapistProblemCopyWithImpl(_$_ApiTherapistProblem _value,
      $Res Function(_$_ApiTherapistProblem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ApiTherapistProblem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapistProblem implements _ApiTherapistProblem {
  _$_ApiTherapistProblem({required this.id, required this.name});

  factory _$_ApiTherapistProblem.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistProblemFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ApiTherapistProblem(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapistProblem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistProblemCopyWith<_$_ApiTherapistProblem> get copyWith =>
      __$$_ApiTherapistProblemCopyWithImpl<_$_ApiTherapistProblem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistProblemToJson(
      this,
    );
  }
}

abstract class _ApiTherapistProblem implements ApiTherapistProblem {
  factory _ApiTherapistProblem(
      {required final String id,
      required final String name}) = _$_ApiTherapistProblem;

  factory _ApiTherapistProblem.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapistProblem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistProblemCopyWith<_$_ApiTherapistProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTherapistProblemsByTypes _$ApiTherapistProblemsByTypesFromJson(
    Map<String, dynamic> json) {
  return _ApiTherapistProblemsByTypes.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapistProblemsByTypes {
  String get type => throw _privateConstructorUsedError;
  List<ApiTherapistProblemByGroup>? get problemsByGroups =>
      throw _privateConstructorUsedError;
  List<ApiTherapistProblem>? get problems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistProblemsByTypesCopyWith<ApiTherapistProblemsByTypes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistProblemsByTypesCopyWith<$Res> {
  factory $ApiTherapistProblemsByTypesCopyWith(
          ApiTherapistProblemsByTypes value,
          $Res Function(ApiTherapistProblemsByTypes) then) =
      _$ApiTherapistProblemsByTypesCopyWithImpl<$Res,
          ApiTherapistProblemsByTypes>;
  @useResult
  $Res call(
      {String type,
      List<ApiTherapistProblemByGroup>? problemsByGroups,
      List<ApiTherapistProblem>? problems});
}

/// @nodoc
class _$ApiTherapistProblemsByTypesCopyWithImpl<$Res,
        $Val extends ApiTherapistProblemsByTypes>
    implements $ApiTherapistProblemsByTypesCopyWith<$Res> {
  _$ApiTherapistProblemsByTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? problemsByGroups = freezed,
    Object? problems = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      problemsByGroups: freezed == problemsByGroups
          ? _value.problemsByGroups
          : problemsByGroups // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblemByGroup>?,
      problems: freezed == problems
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTherapistProblemsByTypesCopyWith<$Res>
    implements $ApiTherapistProblemsByTypesCopyWith<$Res> {
  factory _$$_ApiTherapistProblemsByTypesCopyWith(
          _$_ApiTherapistProblemsByTypes value,
          $Res Function(_$_ApiTherapistProblemsByTypes) then) =
      __$$_ApiTherapistProblemsByTypesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      List<ApiTherapistProblemByGroup>? problemsByGroups,
      List<ApiTherapistProblem>? problems});
}

/// @nodoc
class __$$_ApiTherapistProblemsByTypesCopyWithImpl<$Res>
    extends _$ApiTherapistProblemsByTypesCopyWithImpl<$Res,
        _$_ApiTherapistProblemsByTypes>
    implements _$$_ApiTherapistProblemsByTypesCopyWith<$Res> {
  __$$_ApiTherapistProblemsByTypesCopyWithImpl(
      _$_ApiTherapistProblemsByTypes _value,
      $Res Function(_$_ApiTherapistProblemsByTypes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? problemsByGroups = freezed,
    Object? problems = freezed,
  }) {
    return _then(_$_ApiTherapistProblemsByTypes(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      problemsByGroups: freezed == problemsByGroups
          ? _value._problemsByGroups
          : problemsByGroups // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblemByGroup>?,
      problems: freezed == problems
          ? _value._problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<ApiTherapistProblem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapistProblemsByTypes implements _ApiTherapistProblemsByTypes {
  _$_ApiTherapistProblemsByTypes(
      {required this.type,
      final List<ApiTherapistProblemByGroup>? problemsByGroups,
      final List<ApiTherapistProblem>? problems})
      : _problemsByGroups = problemsByGroups,
        _problems = problems;

  factory _$_ApiTherapistProblemsByTypes.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistProblemsByTypesFromJson(json);

  @override
  final String type;
  final List<ApiTherapistProblemByGroup>? _problemsByGroups;
  @override
  List<ApiTherapistProblemByGroup>? get problemsByGroups {
    final value = _problemsByGroups;
    if (value == null) return null;
    if (_problemsByGroups is EqualUnmodifiableListView)
      return _problemsByGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ApiTherapistProblem>? _problems;
  @override
  List<ApiTherapistProblem>? get problems {
    final value = _problems;
    if (value == null) return null;
    if (_problems is EqualUnmodifiableListView) return _problems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiTherapistProblemsByTypes(type: $type, problemsByGroups: $problemsByGroups, problems: $problems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapistProblemsByTypes &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._problemsByGroups, _problemsByGroups) &&
            const DeepCollectionEquality().equals(other._problems, _problems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_problemsByGroups),
      const DeepCollectionEquality().hash(_problems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistProblemsByTypesCopyWith<_$_ApiTherapistProblemsByTypes>
      get copyWith => __$$_ApiTherapistProblemsByTypesCopyWithImpl<
          _$_ApiTherapistProblemsByTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistProblemsByTypesToJson(
      this,
    );
  }
}

abstract class _ApiTherapistProblemsByTypes
    implements ApiTherapistProblemsByTypes {
  factory _ApiTherapistProblemsByTypes(
          {required final String type,
          final List<ApiTherapistProblemByGroup>? problemsByGroups,
          final List<ApiTherapistProblem>? problems}) =
      _$_ApiTherapistProblemsByTypes;

  factory _ApiTherapistProblemsByTypes.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapistProblemsByTypes.fromJson;

  @override
  String get type;
  @override
  List<ApiTherapistProblemByGroup>? get problemsByGroups;
  @override
  List<ApiTherapistProblem>? get problems;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistProblemsByTypesCopyWith<_$_ApiTherapistProblemsByTypes>
      get copyWith => throw _privateConstructorUsedError;
}

ApiTherapistFilterProblem _$ApiTherapistFilterProblemFromJson(
    Map<String, dynamic> json) {
  return _ApiTherapistFilterProblem.fromJson(json);
}

/// @nodoc
mixin _$ApiTherapistFilterProblem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get questionnaireType => throw _privateConstructorUsedError;
  String? get groupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTherapistFilterProblemCopyWith<ApiTherapistFilterProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTherapistFilterProblemCopyWith<$Res> {
  factory $ApiTherapistFilterProblemCopyWith(ApiTherapistFilterProblem value,
          $Res Function(ApiTherapistFilterProblem) then) =
      _$ApiTherapistFilterProblemCopyWithImpl<$Res, ApiTherapistFilterProblem>;
  @useResult
  $Res call(
      {String id, String name, String questionnaireType, String? groupName});
}

/// @nodoc
class _$ApiTherapistFilterProblemCopyWithImpl<$Res,
        $Val extends ApiTherapistFilterProblem>
    implements $ApiTherapistFilterProblemCopyWith<$Res> {
  _$ApiTherapistFilterProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? questionnaireType = null,
    Object? groupName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionnaireType: null == questionnaireType
          ? _value.questionnaireType
          : questionnaireType // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTherapistFilterProblemCopyWith<$Res>
    implements $ApiTherapistFilterProblemCopyWith<$Res> {
  factory _$$_ApiTherapistFilterProblemCopyWith(
          _$_ApiTherapistFilterProblem value,
          $Res Function(_$_ApiTherapistFilterProblem) then) =
      __$$_ApiTherapistFilterProblemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String questionnaireType, String? groupName});
}

/// @nodoc
class __$$_ApiTherapistFilterProblemCopyWithImpl<$Res>
    extends _$ApiTherapistFilterProblemCopyWithImpl<$Res,
        _$_ApiTherapistFilterProblem>
    implements _$$_ApiTherapistFilterProblemCopyWith<$Res> {
  __$$_ApiTherapistFilterProblemCopyWithImpl(
      _$_ApiTherapistFilterProblem _value,
      $Res Function(_$_ApiTherapistFilterProblem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? questionnaireType = null,
    Object? groupName = freezed,
  }) {
    return _then(_$_ApiTherapistFilterProblem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionnaireType: null == questionnaireType
          ? _value.questionnaireType
          : questionnaireType // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTherapistFilterProblem implements _ApiTherapistFilterProblem {
  _$_ApiTherapistFilterProblem(
      {required this.id,
      required this.name,
      required this.questionnaireType,
      this.groupName});

  factory _$_ApiTherapistFilterProblem.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTherapistFilterProblemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String questionnaireType;
  @override
  final String? groupName;

  @override
  String toString() {
    return 'ApiTherapistFilterProblem(id: $id, name: $name, questionnaireType: $questionnaireType, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTherapistFilterProblem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.questionnaireType, questionnaireType) ||
                other.questionnaireType == questionnaireType) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, questionnaireType, groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTherapistFilterProblemCopyWith<_$_ApiTherapistFilterProblem>
      get copyWith => __$$_ApiTherapistFilterProblemCopyWithImpl<
          _$_ApiTherapistFilterProblem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTherapistFilterProblemToJson(
      this,
    );
  }
}

abstract class _ApiTherapistFilterProblem implements ApiTherapistFilterProblem {
  factory _ApiTherapistFilterProblem(
      {required final String id,
      required final String name,
      required final String questionnaireType,
      final String? groupName}) = _$_ApiTherapistFilterProblem;

  factory _ApiTherapistFilterProblem.fromJson(Map<String, dynamic> json) =
      _$_ApiTherapistFilterProblem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get questionnaireType;
  @override
  String? get groupName;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTherapistFilterProblemCopyWith<_$_ApiTherapistFilterProblem>
      get copyWith => throw _privateConstructorUsedError;
}
