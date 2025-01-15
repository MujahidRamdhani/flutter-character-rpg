enum Vocation {
  raider(
    title: 'Raider',
    description: 'Raider desc',
    image: 'raider.jpg',
    weapon: 'Sword',
    ability: 'Axe',
  ),
  mage(
    title: 'Mage',
    description: 'Mage desc',
    image: 'mage.jpg',
    weapon: 'Staff',
    ability: 'Wand',
  ),
  archer(
    title: 'Archer',
    description: 'Archer desc',
    image: 'archer.jpg',
    weapon: 'Bow',
    ability: 'Crossbow',
  ),
  warrior(
    title: 'Warrior',
    description: 'Warrior desc',
    image: 'terimana_warrior.jpg',
    weapon: 'Sword',
    ability: 'Axe',
  ),
  ranger(
    title: 'Ranger',
    description: 'Ranger desc',
    image: 'ranger.jpg',
    weapon: 'Bow',
    ability: 'Crossbow',
  ),
  rogue(
    title: 'Rogue',
    description: 'Rogue desc',
    image: 'terimana_rogue.jpg',
    weapon: 'Dagger',
    ability: 'Dagger',
  );

  const Vocation({
    required this.title,
    required this.description,
    required this.image,
    required this.weapon,
    required this.ability,
  });

  final String title;
  final String description;
  final String image;
  final String weapon;
  final String ability;
}

