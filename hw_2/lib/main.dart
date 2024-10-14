import 'package:flutter/material.dart';
import 'user_introduction.dart';
import 'user_introductions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserIntroductions(
        userintros: [
          UserIntroduction(
              name: 'John Doe', introduction: 'I am everyone yet no one.'),
          UserIntroduction(
              name: 'Tom Cruise', introduction: 'I am a great actor.'),
          UserIntroduction(
              name: 'Sophie Chen', introduction: 'I am a bee bzz bzz.'),
          UserIntroduction(
              name: 'Shelton Hsu', introduction: 'I am dark jason.'),
          UserIntroduction(
              name: 'Jackson Lester', introduction: ' like goober.'),
        ],
      ),
    );
  }
}

