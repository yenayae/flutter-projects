import 'robot.dart';


class SpyRobot extends Robot {
  SpyRobot({required super.name, required super.age});

  //private variables
  final Map <String, String> secrets = {};

  //functions
  @override
  void speak() {
    print("Hello, my name is $name and my age is $age! I am a spy robot!");
  }

  bool saveSecret({required String codeWord, required String message}) {
    if (secrets.containsKey(codeWord)) {
      return false;
    }
    secrets[codeWord] = message;
    return true;
  }

  bool hasSecret(String codeWord) {
    return secrets.containsKey(codeWord);
  }

  bool removeSecret(String codeWord) {
    if (secrets.containsKey(codeWord)) {
      secrets.remove(codeWord);
      return true;
    }
    return false;
  }

  void sayAllSecrets() {
    if (secrets.isEmpty) {
      print("I don't have any secrets to say.");
    }

    else {
      secrets.forEach((codeWord, message) {
        print("The secret for $codeWord is $message");
      });
    }
  }

}
