import 'package:flutter/material.dart';

class UserIntroduction extends StatelessWidget {
  //instance variables
  final String name;
  final String introduction;

  const UserIntroduction(
      {super.key, required this.name, required this.introduction});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
       Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
       Text(
        introduction,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    ]);

    throw UnimplementedError();
  }
}
