import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant/models/food_model.dart';
import 'package:sushi_restaurant/models/shop.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from cart
  void removeFromCart() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text('Корзина'),
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            //get food from cart
            final Food food = value.cart[index];

            //get food name
            final String foodName = food.name;

            //get food price
            final String foodPrice = food.price;

            //return list tile
            return Container(
              decoration: BoxDecoration(color: secondaryColor),
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: ListTile(
                title: Text(
                  foodName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  foodPrice,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: removeFromCart,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
