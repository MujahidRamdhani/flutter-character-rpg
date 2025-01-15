import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  Character(
      {required this.name,
      required this.slogan,
      required this.vocation,
      required this.id});

  // fields
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  final Set<Skill> skills = {};
  bool _isFav = false;

  // getters
  bool get isFav => _isFav;

  //method
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// dummy data
List<Character> characters = [
  Character(id: '1', name: 'mario', vocation: Vocation.raider, slogan: 'okie dokie'),
  Character(id: '2', name: 'luigi', vocation: Vocation.archer, slogan: 'Archer desc'),
  Character(id: '3', name: 'peach', vocation: Vocation.ranger, slogan: 'ranger desc'),
  Character(id: '4', name: 'yoshi', vocation: Vocation.mage, slogan: 'mage desc'),

];