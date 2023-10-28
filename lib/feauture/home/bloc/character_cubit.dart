import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_state.dart';
import 'package:hp_api_challenge/feauture/home/repository/character_repository.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit({required this.repository}) : super(InitialState()) {
    getHPCharacters();
  }

  final CharacterRepository repository;

  void getHPCharacters() async {
    try {
      emit(LoadingState());
      final movies = await repository.getCharacters();
      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
