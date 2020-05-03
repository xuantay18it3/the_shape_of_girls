// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'girls_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GirlsContainer _$GirlsContainerFromJson(Map<String, dynamic> json) {
  return GirlsContainer(
    (json['girls'] as List)
        .map((e) => Girl.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GirlsContainerToJson(GirlsContainer instance) =>
    <String, dynamic>{
      'girls': instance.girls,
    };
