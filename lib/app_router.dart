import 'package:rick_and_morty_app/business_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty_app/constants/strings.dart';
import 'package:rick_and_morty_app/data/api/characters_api.dart';
import 'package:rick_and_morty_app/data/repo/characters_repo.dart';
import 'package:rick_and_morty_app/presentation/screens/characters_screen.dart';
import 'package:rick_and_morty_app/presentation/screens/characters_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;

  AppRouter() {
    CharactersAPIs charactersAPIs = CharactersAPIs();
    charactersRepo = CharactersRepo(charactersAPIs: charactersAPIs);
    charactersCubit = CharactersCubit(charactersRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => charactersCubit,
                  child: CharactersScreen(),
                ));

      case charactersDetails:
        return MaterialPageRoute(builder: (_) => CharactersDetails());
    }
    return null;
  }
}
