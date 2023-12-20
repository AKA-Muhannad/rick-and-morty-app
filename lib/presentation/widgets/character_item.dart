import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/constants/colors.dart';
import 'package:rick_and_morty_app/data/models/characters_model.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});
  final Character character;

  // build only one item ... ot apply it to all items then
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: RickAndMortyColors.lightBrown,
          borderRadius: BorderRadius.circular(8)),
      child: GridTile(
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text(
              '${character.charName}',
              style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: RickAndMortyColors.brown,
                  fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
            ),
          ),
          child: Container(
            child: character.charImg.isNotEmpty
                ? FadeInImage.assetNetwork(
                    placeholder: 'assets/images/Loading-character.gif',
                    image: character.charImg,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/placeholder.gif'),
            color: RickAndMortyColors.brown,
          )),
    );
  }
}
