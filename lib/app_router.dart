import 'package:rick_and_morty_app/constants/strings.dart';
import 'package:rick_and_morty_app/presentation/screens/characters.dart';
import 'package:rick_and_morty_app/presentation/screens/characters_details.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());

      case charactersDetails:
        return MaterialPageRoute(builder: (_) => CharactersDetails());
    }
    return null;
  }
}
