import 'package:equatable/equatable.dart';
import 'package:hp_api_challenge/feauture/home/model/character.dart';

abstract class CharactersState extends Equatable {}

class InitialState extends CharactersState {
  @override
  List<Object> get props => [];
}

class LoadingState extends CharactersState {
  @override
  List<Object> get props => [];
}

class LoadedState extends CharactersState {
  LoadedState(this.characters);

  final List<Character> characters;

  @override
  List<Object> get props => [characters];
}

class ErrorState extends CharactersState {
  @override
  List<Object> get props => [];
}
