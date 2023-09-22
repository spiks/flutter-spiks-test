import 'package:freezed_annotation/freezed_annotation.dart';

import '../api_therapist/api_therapist.dart';

part 'api_therapist_list.freezed.dart';
part 'api_therapist_list.g.dart';

@freezed
class ApiTherapistList with _$ApiTherapistList {
  factory ApiTherapistList({
    required List<ApiTherapist> items,
    String? nextPageCursor,
  }) = _ApiTherapistList;

  factory ApiTherapistList.fromJson(Map<String, Object?> json)
  => _$ApiTherapistListFromJson(json);
}
