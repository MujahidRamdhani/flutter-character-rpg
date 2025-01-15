
import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';


class CharacterStore extends ChangeNotifier {
  final List<Character> _characters = [
      Character(id: '1', name: 'mario', vocation: Vocation.raider, slogan: 'okie dokie'),
      Character(id: '2', name: 'luigi', vocation: Vocation.archer, slogan: 'Archer desc'),
      Character(id: '3', name: 'peach', vocation: Vocation.ranger, slogan: 'ranger desc'),
      Character(id: '4', name: 'yoshi', vocation: Vocation.mage, slogan: 'mage desc'),
  ];
  get characters => _characters;

  
  // add character
  void addCharacter(Character character) {
    _characters.add(character);
    notifyListeners();
  }
  // save (update) character

  //remove character

  // inital fetch characters
}