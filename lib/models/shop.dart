import 'package:flutter/material.dart';

import 'food_model.dart';

class Shop extends ChangeNotifier {
  //food menu
  final List<Food> _foodMenu = [
    //salmon sushi
    Food(
      name: 'Суши с лососем',
      price: '250.00',
      imagePath: 'lib/images/free-icon-sushi-2713959.png',
      rating: '4,9',
    ),

    //кшсу
    Food(
      name: 'Рис',
      price: '150.00',
      imagePath: 'lib/images/free-icon-rice-bowl-2714036.png',
      rating: '4,7',
    ),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
