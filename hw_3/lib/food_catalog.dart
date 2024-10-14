import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food.dart';

class FoodCatalog extends StatefulWidget {
  final List<Food> foods;

  const FoodCatalog({super.key, required this.foods});

  @override
  _FoodCatalogState createState() => _FoodCatalogState();
}

class _FoodCatalogState extends State<FoodCatalog> {
  int index = 0;

  void _nextFood() {
    setState(() {
      index = (index + 1) % widget.foods.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Food currentFood = widget.foods[index];

    return Scaffold(

      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Stack( // Use Stack to overlay the button
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                currentFood.name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              child: Text(
                                currentFood.description,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ClipRect(
                        child: Image.network(currentFood.url, fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30.0,
                bottom: 30.0,
                child: ElevatedButton(
                  onPressed: _nextFood,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
                    textStyle:  const TextStyle(fontSize: 16),
                  ),
                  child: const Text("See Next Food!"),


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
