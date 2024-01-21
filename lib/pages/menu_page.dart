import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/themes/colors.dart';

import '../components/drawer.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({
    super.key,
  });

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
          children: [
            //promo banner
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Column(
                    children: [
                      //text message
                      Text(
                        'Скидка 30% на первый заказ',
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 20,
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
                ],
              ),
            )

            //search bar

            //menu list

            //popular food
          ],
        ));
  }
}
