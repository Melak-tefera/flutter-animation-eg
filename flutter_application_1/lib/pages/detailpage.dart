import 'package:flutter/material.dart';
// a good example for hero.  listview, column, and other bounded constraints should be inside a hero if doing hero animation 
class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Hero Animation')),
      ),
      body: Hero(
        tag: "hero",
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Material(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Rounded image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // fixed type
                    child: Image.asset(
                      "assets/images/user.png",
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover, // usually looks better than fill
                    ),
                  ),
                      
                  const SizedBox(height: 10),
                      
                  // Description text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Beginner-to-intermediate Flutter developer based in Addis Ababa. "
                      "I build small apps (notes, weather, auth, inventory) while learning "
                      "Dart, APIs, and mobile architecture.",
                      textAlign: TextAlign.center, // center-align text
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}