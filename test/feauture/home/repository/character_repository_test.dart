import 'package:flutter_test/flutter_test.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_cubit.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_state.dart';
import 'package:hp_api_challenge/feauture/home/model/character.dart';
import 'package:hp_api_challenge/feauture/home/repository/character_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements CharacterRepository {}

void main() {
  late MockRepository characterRepository;
  late CharactersCubit charactersCubit;
  const characters = [
    Character(
      id: "id1",
      name: "name1",
      image: "image1",
      hogwartsStudent: true,
      hogwartsStaff: false,
    ),
    Character(
      id: "id2",
      name: "name2",
      image: "image2",
      hogwartsStudent: false,
      hogwartsStaff: true,
    )
  ];

  setUp(() {
    characterRepository = MockRepository();
    when(() => characterRepository.getCharacters()).thenAnswer(
      (_) async => characters,
    );
  });

  test("Emits characters when repository answer correctly", () async {
    charactersCubit = CharactersCubit(repository: characterRepository);
    await expectLater(
      charactersCubit.stream,
      emits(LoadedState(characters)),
    );
  });
}
