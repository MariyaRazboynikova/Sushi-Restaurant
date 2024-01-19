import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 38, 30),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),

            //shop name
            Text(
              'SUSHI MAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            //icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/free-icon-sushi-roll-2713978.png'),
            ),

            //title
            Center(
              child: Text(
                'THE TASTE OF JAPANESE FOOD',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),

            //subtuitle
            Center(
              child: Text(
                'Feel the taste of the most popular Japanese food from enywhere and anytime',
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),
            ),

            const SizedBox(height: 15),

            //get started button
            MyButton(
              text: 'Get Started',
              //go to menu page
              onTap: () {
                Navigator.pushNamed(context, '/menu_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
