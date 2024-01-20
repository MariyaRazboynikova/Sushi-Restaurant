import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 155, 38, 30),
        title: Text(
          'Menu',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 25),

          //shop subtitle
          Center(
            child: Text(
              "Pick from selected list of premium products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          //product list
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                //get each individual product  from shop
              },
            ),
          ),
        ],
      ),
    );
  }
}
