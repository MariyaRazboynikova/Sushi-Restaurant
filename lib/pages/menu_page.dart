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
    );
  }
}
