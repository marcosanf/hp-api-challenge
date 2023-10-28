import 'package:freezed_annotation/freezed_annotation.dart';
part 'character.freezed.dart';
part 'character.g.dart';

@Freezed()
class Character with _$Character {
  const factory Character({
    @Default('') id,
    @Default('') name,
    @Default([]) List<String> alternateNames,
    @Default('') species,
    @Default('') String gender,
    @Default('') String house,
    @Default('') String dateOfBirth,
    @Default(0) yearOfBirth,
    required bool wizard,
    @Default('') ancestry,
    @Default('') eyeColour,
    @Default('') hairColour,
    @Default('') patronus,
    required bool hogwartsStudent,
    required bool hogwartsStaff,
    @Default('') actor,
    @Default([]) List<dynamic> alternateActors,
    required bool alive,
    @Default('') image,
  }) = _Character;

  factory Character.fromJson(Map<String, Object?> json) =>
      _$CharacterFromJson(json);
}
