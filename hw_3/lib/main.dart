import 'package:flutter/material.dart';
import 'food_catalog.dart';
import 'food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FoodCatalog(
        foods: [
          Food(
            name: 'Pancake',
            description: 'Yummy pancakes that are super tasty! ',
            url: 'https://upload.wikimedia.org/wikipedia/commons/8/87/Pancakes_with_fruit.jpg',
          ),
          Food(
            name: 'Burger',
            description: 'Burgers are super tasty as well!',
            url: 'https://upload.wikimedia.org/wikipedia/commons/0/0b/RedDot_Burger.jpg',
          ),

          Food(
            name: 'Udon',
            description: 'My favorite food is udon',
            url: 'https://upload.wikimedia.org/wikipedia/commons/d/db/Udon_noodle_Bowl_%28Nongshim%29_20210701_003.jpg',
          ),

          Food(
            name: 'Chipotle',
            description: 'Often known simply as Chipotle, is an international chain of fast casual restaurants specializing in Tex-Mex cuisine, salads, tacos, and Mission burritos made to order in front of the customer. As of June 30, 2024, Chipotle has 3,500 restaurants. Its name derives from chipotle, the Nahuatl name for a smoked and dried jalapeño chili pepper.Chipotle was one of the first chains of fast casual dining establishments. Founded by Steve Ells on July 13, 1993, Chipotle had 16 restaurants (all in Colorado) when McDonald\'s Corporation became a major investor in 1998. By the time McDonald\'s fully divested itself from Chipotle in 2006, the chain had grown to over 500 locations. With more than 2,000 locations, Chipotle had a net income of USD 475.6 million and a staff of more than 45,000 employees in 2015.In May 2018, Chipotle announced the relocation of their corporate headquarters to Newport Beach, California, in Southern California, leaving Denver after 25 years.',
            url: 'https://live.staticflickr.com/3769/9064376988_355e38e400_b.jpg',
          ),

          Food(
            name: 'Beijing-Style Hotpot: Northern-style Hotpot on copper Mongolian pots',
            description: 'Hotpot is supa good.',
            url: 'https://live.staticflickr.com/8215/8290536498_9d35a52c70_b.jpg',
          ),
        ],
      )
    );
  }
}


