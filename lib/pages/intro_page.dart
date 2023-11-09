import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 80, right: 80, bottom: 40, top: 160),
                child: Image.asset(
                  'images/avocado.png',
                  scale: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'we deliver grocries at your doorstep',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Fresh items everyday',
                style: (TextStyle(color: Colors.grey[800])),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(24),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }
                  ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.deepPurple),
                    child: Text(
                      'Get started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
