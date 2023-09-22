// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_therapist_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTherapistList _$$_ApiTherapistListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistList',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistList(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => ApiTherapist.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextPageCursor:
              $checkedConvert('nextPageCursor', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistListToJson(_$_ApiTherapistList instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextPageCursor': instance.nextPageCursor,
    };
