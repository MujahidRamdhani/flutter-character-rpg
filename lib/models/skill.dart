import 'package:flutter_rpg/models/vocation.dart';

class Skill {
  final String id;
  final String name;
  final String image;
  final Vocation vocation;

  Skill({
    required this.id,
    required this.name,
    required this.image,
    required this.vocation,
  });
}

final List<Skill> allSkills = [
  //mage
  Skill(
      id: '1',
      name: 'Brute Force Bolt',
      image: 'mage1.png',
      vocation: Vocation.mage),
  Skill(
      id: '2',
      name: 'Fireball',
      image: 'mage2.png',
      vocation: Vocation.mage),
  Skill(
      id: '3',
      name: 'Ice Bolt',
      image: 'mage3.png',
      vocation: Vocation.mage),
  Skill(
      id: '4',
      name: 'Lightning Bolt',
      image: 'mage1.png',
      vocation: Vocation.mage),
  
  // raider skills
  Skill(
      id: '5',
      name: 'Sword Slash',
      image: 'raider1.png',
      vocation: Vocation.raider),
  Skill(
      id: '6',
      name: 'Axe Slash',
      image: 'raider2.png',
      vocation: Vocation.raider),
  Skill(
      id: '7',
      name: 'Spear Slash',
      image: 'raider3.png',
      vocation: Vocation.raider),
  Skill(
      id: '8',
      name: 'Dagger Slash',
      image: 'raider1.png',
      vocation: Vocation.raider),
  
  // warrior skills
  Skill(
      id: '9',
      name: 'Sword Slash',
      image: 'ranger1.png',
      vocation: Vocation.ranger),
  Skill(
      id: '10',
      name: 'Axe Slash',
      image: 'ranger2.png',
      vocation: Vocation.ranger),
  Skill(
      id: '11',
      name: 'Spear Slash',
      image: 'ranger3.png',
      vocation: Vocation.ranger),
  Skill(
      id: '12',
      name: 'Dagger Slash',
      image: 'ranger1.png',
      vocation: Vocation.ranger),
  
  // archer skills
  Skill(
      id: '13',
      name: 'Sword Slash',
      image: 'archer1.png',
      vocation: Vocation.archer),
  Skill(
      id: '14',
      name: 'Axe Slash',
      image: 'archer2.png',
      vocation: Vocation.archer),
  Skill(
      id: '15',
      name: 'Spear Slash',
      image: 'archer3.png',
      vocation: Vocation.archer),
  Skill(
      id: '16',
      name: 'Dagger Slash',
      image: 'archer1.png',
      vocation: Vocation.archer),
  
      
];
