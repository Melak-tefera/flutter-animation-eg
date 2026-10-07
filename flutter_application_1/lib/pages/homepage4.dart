import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detailpage.dart';

class HeroAnimation extends StatefulWidget {
const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Center(child: Text('Hero Animation'))),

    body:Center(
          child: GestureDetector(
            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Detailpage())),
            child: Material(
              color: Colors.transparent,
              child: Hero(
                tag: "hero",
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.asset("assets/images/user.png", height: 150,width: 150, fit: BoxFit.fill,),
                ),
              ),
            ),
          ),
        ),
    );
  }
}