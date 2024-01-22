import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/models/food_model.dart';
import 'package:sushi_restaurant/themes/colors.dart';

import '../components/drawer.dart';
import '../components/food_tile.dart';
import 'food_detailes_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({
    super.key,
  });

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodMenu = [
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

  //navigate to food item detailes page
  void NavigateToFoodDetailes(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => FoodDetailesPage(
                food: foodMenu[index],
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Text(
          'Menu',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 15,
            color: Colors.grey[900],
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //text message
                    Text(
                      'Скидка 30% на первый заказ',
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 20),

                    //redeem button
                    MyButton(
                      text: 'Активация',
                      onTap: () {},
                    ),
                  ],
                ),

                //image
                Image.asset(
                  'lib/images/free-icon-ramen-2714030.png',
                  height: 70,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Поиск...'),
            ),
          ),

          const SizedBox(height: 25),

          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text('Меню',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 18)),
          ),

          const SizedBox(height: 10),

          //popular food
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => NavigateToFoodDetailes(index),
              ),
            ),
          ),

          const SizedBox(height: 10),

          //popular food
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //image
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Image.asset(
                          'lib/images/free-icon-sushi-roll-2713978.png',
                          height: 60,
                        ),
                      ),

                      const SizedBox(height: 20),

                      //name and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          Text(
                            'Калифорния',
                            style: GoogleFonts.dmSerifDisplay(
                              fontSize: 18,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(height: 10),

                          //price
                          Text(
                            '\$340.00',
                            style: TextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //heart
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
