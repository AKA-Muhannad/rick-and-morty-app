import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(child: Text("Muhannad")),
        ),
      ),
    );
  }
}