// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      alternateNames: (json['alternateNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      species: json['species'] ?? '',
      gender: json['gender'] as String? ?? '',
      house: json['house'] as String? ?? '',
      dateOfBirth: json['dateOfBirth'] as String? ?? '',
      yearOfBirth: json['yearOfBirth'] ?? 0,
      wizard: json['wizard'] as bool,
      ancestry: json['ancestry'] ?? '',
      eyeColour: json['eyeColour'] ?? '',
      hairColour: json['hairColour'] ?? '',
      patronus: json['patronus'] ?? '',
      hogwartsStudent: json['hogwartsStudent'] as bool,
      hogwartsStaff: json['hogwartsStaff'] as bool,
      actor: json['actor'] ?? '',
      alternateActors: json['alternateActors'] as List<dynamic>? ?? const [],
      alive: json['alive'] as bool,
      image: json['image'] ?? '',
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternateNames': instance.alternateNames,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'dateOfBirth': instance.dateOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'wizard': instance.wizard,
      'ancestry': instance.ancestry,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'patronus': instance.patronus,
      'hogwartsStudent': instance.hogwartsStudent,
      'hogwartsStaff': instance.hogwartsStaff,
      'actor': instance.actor,
      'alternateActors': instance.alternateActors,
      'alive': instance.alive,
      'image': instance.image,
    };
