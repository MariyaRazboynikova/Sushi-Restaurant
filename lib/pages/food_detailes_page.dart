import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/themes/colors.dart';

import '../models/food_model.dart';

class FoodDetailesPage extends StatefulWidget {
  final Food food;

  const FoodDetailesPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailesPage> createState() => _FoodDetailesPageState();
}

class _FoodDetailesPageState extends State<FoodDetailesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          //listview of food detailes
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  const SizedBox(height: 25),

                  //rating
                  Row(
                    children: [
                      //star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),

                      const SizedBox(width: 5),

                      //raiting number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  //food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  const SizedBox(height: 25),

                  //description
                  Text(
                    'Описание',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Традиционнное блюдо японской кухни, приготовленное из риса, с добавлением красного мяса, яиц, уксусной приправы, морепродуктов и других ингредиентов. С начала 1980 года суши приобрели огромную популярность в мире.',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //price + quantity + add to card button
          Container(
            color: primaryColor,
            child: Column(
                //price+quantity

                //add to cart button
                ),
          ),
        ],
      ),
    );
  }
}
