import 'package:flutter/material.dart';
import 'package:sushi_restaurant/pages/menu_page.dart';
import 'package:sushi_restaurant/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/menu_page': (context) => const MenuPage(),
        // '/cart_page': (context) => const CartPage(),
        // '/settings_page': (context) => const SettingsPage(),
      },
    );
  }
}
