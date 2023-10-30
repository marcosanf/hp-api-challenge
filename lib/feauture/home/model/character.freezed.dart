// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get name =>
      throw _privateConstructorUsedError; // @Default([]) List<String> alternateNames,
// @Default('') species,
// @Default('') String gender,
// @Default('') String house,
// @Default('') String dateOfBirth,
// @Default(0) yearOfBirth,
// required bool wizard,
// @Default('') ancestry,
// @Default('') eyeColour,
// @Default('') hairColour,
// @Default('') patronus,
  bool get hogwartsStudent => throw _privateConstructorUsedError;
  bool get hogwartsStaff =>
      throw _privateConstructorUsedError; // @Default('') actor,
// @Default([]) List<dynamic> alternateActors,
// required bool alive,
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      bool hogwartsStudent,
      bool hogwartsStaff,
      dynamic image});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hogwartsStudent = null,
    Object? hogwartsStaff = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hogwartsStudent: null == hogwartsStudent
          ? _value.hogwartsStudent
          : hogwartsStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      hogwartsStaff: null == hogwartsStaff
          ? _value.hogwartsStaff
          : hogwartsStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      bool hogwartsStudent,
      bool hogwartsStaff,
      dynamic image});
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hogwartsStudent = null,
    Object? hogwartsStaff = null,
    Object? image = freezed,
  }) {
    return _then(_$CharacterImpl(
      id: freezed == id ? _value.id! : id,
      name: freezed == name ? _value.name! : name,
      hogwartsStudent: null == hogwartsStudent
          ? _value.hogwartsStudent
          : hogwartsStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      hogwartsStaff: null == hogwartsStaff
          ? _value.hogwartsStaff
          : hogwartsStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image ? _value.image! : image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  const _$CharacterImpl(
      {this.id = '',
      this.name = '',
      required this.hogwartsStudent,
      required this.hogwartsStaff,
      this.image = ''});

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  @JsonKey()
  final dynamic id;
  @override
  @JsonKey()
  final dynamic name;
// @Default([]) List<String> alternateNames,
// @Default('') species,
// @Default('') String gender,
// @Default('') String house,
// @Default('') String dateOfBirth,
// @Default(0) yearOfBirth,
// required bool wizard,
// @Default('') ancestry,
// @Default('') eyeColour,
// @Default('') hairColour,
// @Default('') patronus,
  @override
  final bool hogwartsStudent;
  @override
  final bool hogwartsStaff;
// @Default('') actor,
// @Default([]) List<dynamic> alternateActors,
// required bool alive,
  @override
  @JsonKey()
  final dynamic image;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            (identical(other.hogwartsStudent, hogwartsStudent) ||
                other.hogwartsStudent == hogwartsStudent) &&
            (identical(other.hogwartsStaff, hogwartsStaff) ||
                other.hogwartsStaff == hogwartsStaff) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      hogwartsStudent,
      hogwartsStaff,
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {final dynamic id,
      final dynamic name,
      required final bool hogwartsStudent,
      required final bool hogwartsStaff,
      final dynamic image}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get name;
  @override // @Default([]) List<String> alternateNames,
// @Default('') species,
// @Default('') String gender,
// @Default('') String house,
// @Default('') String dateOfBirth,
// @Default(0) yearOfBirth,
// required bool wizard,
// @Default('') ancestry,
// @Default('') eyeColour,
// @Default('') hairColour,
// @Default('') patronus,
  bool get hogwartsStudent;
  @override
  bool get hogwartsStaff;
  @override // @Default('') actor,
// @Default([]) List<dynamic> alternateActors,
// required bool alive,
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
