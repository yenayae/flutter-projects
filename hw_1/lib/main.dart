import 'item.dart';
import 'robot.dart';
import 'robot_addons.dart';
import 'spy_robot.dart';
import 'transport_robot.dart';

void main() {
  //robot test start
  print ("ROBOT TEST START:");
  final robot = Robot(name: 'Tom', age: 5);
  print(robot.name);
  print(robot.age);
  print(robot.isOn());
  robot.power(true);
  print(robot.isOn());
  robot.power(false);
  print(robot.isOn());
  robot.speak();
  //robot test end

  print ('---------------------------------------');

  //spy robot test start
  print ("SPY ROBOT TEST START:");
  final spyRobot = SpyRobot(name: 'Tom', age: 5);
  print(spyRobot is Robot);
  print(spyRobot.name);
  print(spyRobot.age);
  spyRobot.speak();
  print(spyRobot.saveSecret(
      codeWord: 'zulu', message: 'This is my old message!'));
  print(spyRobot.saveSecret(
      codeWord: 'zulu', message: 'This is my new message!'));
  print(spyRobot.hasSecret('zulu'));
  print(spyRobot.hasSecret('kilo'));
  print(spyRobot.removeSecret('zulu'));
  print(spyRobot.removeSecret('zulu'));
  spyRobot.sayAllSecrets();
  print(spyRobot.saveSecret(
      codeWord: 'zulu', message: 'This is my old message!'));
  print(spyRobot.saveSecret(
      codeWord: 'kilo', message: 'Hello there!'));
  print(spyRobot.saveSecret(
      codeWord: 'foxtrot', message: 'Bye bye!'));
  spyRobot.sayAllSecrets();
  //spy robot test end

  print ('---------------------------------------');

  //item test start
  print ("ITEM TEST START:");
  final lightItem = Item(name: 'Hat', weight: ItemWeight.light, description: 'You can wear this!');
  final lightItemTwo = Item(name: 'Pen', weight: ItemWeight.light);
  final normalItem = Item(name: 'Suitcase', weight: ItemWeight.normal);
  final heavyItem = Item(name: 'Car', weight: ItemWeight.heavy);
  print(lightItem.name);
  print(lightItem.description);
  print(lightItem.weight);
  //item test end

  print ('---------------------------------------');

  //transport robot test start
  print ("TRANSPORT ROBOT TEST START:");
  final lightTransportRobot = TransportRobot.light(name: 'Tim', age: 12);
  final normalTransportRobot = TransportRobot.normal(name: 'Jan', age: 5);
  final heavyTransportRobot = TransportRobot.heavy(name: 'Ralph', age: 10);
  print(lightTransportRobot.weight == ItemWeight.light);
  print(normalTransportRobot.weight == ItemWeight.normal);
  print(heavyTransportRobot.weight == ItemWeight.heavy);
  print(lightTransportRobot.items.isEmpty);
  print(lightTransportRobot.pickUp(lightItem));
  print(lightTransportRobot.pickUp(lightItemTwo));
  print(lightTransportRobot.pickUp(normalItem));
  print(lightTransportRobot.pickUp(heavyItem));
  print(lightTransportRobot.items[0].name);
  print(lightTransportRobot.items[1].name);
  print(lightTransportRobot is Robot);
  print(lightTransportRobot.getItemWithName('Hat')?.name ?? 'No item');
  print(lightTransportRobot.getItemWithName('key')?.name ?? 'No item');
  print(lightTransportRobot.remove('Hat'));
  print(lightTransportRobot.remove('Hat'));
  print(lightTransportRobot is JokingRobot);
  print(lightTransportRobot is SingingRobot);
  lightTransportRobot.sayFavoriteJoke();
  lightTransportRobot.singFavoriteSong();
  //transport robot test end
}
