import 'package:flutter/material.dart';
import 'package:hw_2/user_introduction.dart';

class UserIntroductions extends StatefulWidget {

  // final List<String> names;
  // final List<String> introductions;

  final List<UserIntroduction> userintros;

  const UserIntroductions(
      {super.key, required this.userintros});

  @override
  State<UserIntroductions> createState() => _UserIntroductionsState();


}

class _UserIntroductionsState extends State<UserIntroductions> {
  int currentIndex = 0;

  void nextUser() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.userintros.length;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center (
        child: GestureDetector(
          onTap: nextUser,
            child: Column(
              children: [
                Text(
                  widget.userintros[currentIndex].name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  widget.userintros[currentIndex].introduction,
                  style: const TextStyle(
                    fontSize: 16
                  )
                )
              ],
            ),
        )
      )

    );



    throw UnimplementedError();
  }
}

