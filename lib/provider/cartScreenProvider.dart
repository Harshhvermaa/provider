import 'package:flutter/material.dart';

class CartScreenProvider extends ChangeNotifier {

  List<String> fruitName = [
    "apple",
    "banana",
    "apple2",
    "apple3",
    "apple4",
    "apple5",
    "apple6",
    "apple6",
    "apple7",
  ];

  List<String> selectedFruits = [];

  addFruit(String name){
    selectedFruits.contains(name)
    ? selectedFruits.remove(name)
    : selectedFruits.add(name);
    notifyListeners();
  }

}
