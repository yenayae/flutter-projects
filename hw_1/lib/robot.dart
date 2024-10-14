class Robot {

  //instance variables
  final String name;
  final int age;

  //constructor
  Robot ({required this.name, required this.age});

  //private variables
  bool powerState = false;

  //functions
  bool isOn () {
    return powerState;
  }

  void power (bool state) {
    powerState = state;
  }

  void speak () {
    print("Hello my name is $name and my age is $age!");

  }


}
