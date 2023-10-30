import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hp_api_challenge/feauture/home/model/character.dart';
import 'package:hp_api_challenge/feauture/home/repository/character_repository.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:hp_api_challenge/feauture/home/bloc/character_cubit.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_state.dart';
import 'package:hp_api_challenge/feauture/home/ui/page/home_page.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements CharacterRepository {}

class MockCharactersCubit extends MockCubit<CharactersState>
    implements CharactersCubit {}

class MockCharactersState extends Fake implements CharactersState {}

void main() {
  late MockCharactersCubit charactersCubit;
  late MockRepository characterRepository;
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

  setUpAll(() {
    mocktail.registerFallbackValue(MockCharactersState());
  });

  setUp(() {
    characterRepository = MockRepository();
    when(() => characterRepository.getCharacters()).thenAnswer(
      (_) async => characters,
    );
    charactersCubit = MockCharactersCubit();
    mocktail.when(() => charactersCubit.state).thenReturn(LoadingState());
  });

  testWidgets('home page is loading', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BlocProvider(
        create: (_) => CharactersCubit(repository: characterRepository),
        child: const HomePage(),
      ),
    ));

    expect(find.text("Hogwarts Characters"), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
