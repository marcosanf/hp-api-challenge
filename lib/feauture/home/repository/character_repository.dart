import 'package:dio/dio.dart';
import 'package:hp_api_challenge/feauture/home/model/character.dart';

class CharacterRepository {
  const CharacterRepository(this.client);

  final Dio client;

  Future<List<Character>> getCharacters() async {
    try {
      const url = 'https://hp-api.onrender.com/api/characters';

      final response = await client.get(url);

      final characters = response.data as List<dynamic>;
      return characters.map((c) => Character.fromJson(c)).toList();
    } catch (e) {
      throw Exception();
    }
  }
}
