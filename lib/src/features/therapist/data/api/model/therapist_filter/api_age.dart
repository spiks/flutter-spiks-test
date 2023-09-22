import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_age.g.dart';
part 'api_age.freezed.dart';
@freezed
class ApiAge with _$ApiAge {
  factory ApiAge({
    required int from,
    required int to,
  }) = _ApiAge;

  factory ApiAge.fromJson(Map<String, Object?> json) => _$ApiAgeFromJson(json);
}
