import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty_app/data/models/characters_model.dart';
import 'package:rick_and_morty_app/data/repo/characters_repo.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  // cubit will take data from reop
  final CharactersRepo charactersRepo;
  late List<Character> characters;

  CharactersCubit(this.charactersRepo) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepo.getAllCharacters().then((characters) {
      emit(CharactersLoaded(character: characters));
    });

    return characters;
  }
}
