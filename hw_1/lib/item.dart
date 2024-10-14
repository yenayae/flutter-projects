enum ItemWeight {light, normal, heavy}

class Item {

  //instance variables
  final String name;
  final ItemWeight weight;
  final String? description;

  //constructor
  Item ({required this.name, required this.weight, this.description});

}
