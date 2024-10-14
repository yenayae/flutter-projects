import 'item.dart';
import 'robot.dart';
import 'robot_addons.dart';

class TransportRobot extends Robot implements JokingRobot, SingingRobot {
  final ItemWeight weight;
  final List<Item> items = [];

  //constructors
  TransportRobot.light({required String name, required int age})
      : weight = ItemWeight.light,
        super(name: name, age: age);

  TransportRobot.normal({required String name, required int age})
      : weight = ItemWeight.normal,
        super(name: name, age: age);

  TransportRobot.heavy({required String name, required int age})
      : weight = ItemWeight.heavy,
        super(name: name, age: age);

  //overrides
  @override
  void sayFavoriteJoke() {
    print("My favorite joke is you!");
  }

  @override
  void singFavoriteSong() {
    print("La da dee da da da!");
  }

  //functions
  bool pickUp (Item item) {
    if (item.weight == weight) {
      items.add(item);
      return true;
    }
    return false;
  }



  Item? getItemWithName (String itemName) {
    for (Item item in items)  {
      if (item.name == itemName) {
        return item;
      }
    }
    return null;
  }

  bool remove (String itemName) {
    final removingItem = getItemWithName(itemName);
    if (removingItem != null) {
      items.remove(removingItem);
      return true;
    }
    return false;
  }
}
