// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rick_and_morty_app/data/api/characters_api.dart';
import 'package:rick_and_morty_app/data/models/characters_model.dart';

class CharactersRepo {
  CharactersAPIs charactersAPIs;
  CharactersRepo({
    required this.charactersAPIs,
  });

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersAPIs.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}