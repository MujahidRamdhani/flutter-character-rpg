mixin Stats {
  int _points = 10;
  int _attack = 10;
  int _health = 10;
  int _defense = 10;
  int _skill = 10;

  //getters
  int get points => _points;

  Map<String, int> get stats => {
        'attack': _attack,
        'health': _health,
        'defense': _defense,
        'skill': _skill
      };

  List<Map<String, String>> get StatsAsFormattedList => [
        {'title': 'attack', 'value': _attack.toString()},
        {'title': 'health', 'value': _health.toString()},
        {'title': 'defense', 'value': _defense.toString()},
        {'title': 'skill', 'value': _skill.toString()},
      ];
  // methods
  void increaseStat(String stat) {
    if (_points > 0) {
      if (stat == 'health') {
        _health++;
      }
      if (stat == 'attack') {
        _attack++;
      }
      if (stat == 'defense') {
        _defense++;
      }
      if (stat == 'skill') {
        _skill++;
      }
      _points--;
    }
  }

  void decreaseStat(String stat) {
    if (stat == 'health' && _health > 5) {
      _health--;
      _points++;
    }
    if (stat == 'attack' && _attack > 5) {
      _attack--;
      _points++;
    }
    if (stat == 'defense' && _defense > 5) {
      _defense--;
      _points++;
    }
    if (stat == 'skill' && _skill > 5) {
      _skill--;
      _points++;
    }
  }
}

// Character char = Character(name: 'mario', slogan: 'okie dokie', id: '1');
// print(char.);
