import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
const HeroAnimation({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Center(child: Text('Hero Animation'))),

    body:Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset("assets/images/user.png", height: 200,width: 200, fit: BoxFit.fill,),
          ),
        )
      ],
    ),
    );
  }
}