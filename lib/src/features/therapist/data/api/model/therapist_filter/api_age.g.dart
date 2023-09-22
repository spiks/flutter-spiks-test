// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiAge _$$_ApiAgeFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ApiAge',
      json,
      ($checkedConvert) {
        final val = _$_ApiAge(
          from: $checkedConvert('from', (v) => v as int),
          to: $checkedConvert('to', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiAgeToJson(_$_ApiAge instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
