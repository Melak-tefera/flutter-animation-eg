import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/homepage2.dart';
import 'package:flutter_application_1/pages/homepage3.dart';
import 'package:flutter_application_1/pages/homepage4.dart';
import 'package:flutter_application_1/pages/homepage5.dart';
import 'package:flutter_application_1/pages/homepage6.dart';
import 'package:flutter_application_1/pages/homepage7.dart';
import 'package:flutter_application_1/pages/responsive_design/homepae.dart';

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
      home: Homepage8(),
      //home: Tweenanimation2(),
      //home: Phonenumber(),
      // home: Otheranimation(),
     // home: HeroAnimation(),
      // home: ExplicitTweenBuilder(),
     // home:AnimationDemoPage(),
     // home: HomePage(), // homepage that teachs animation controller and  implicit animation in container
    );
  }
}
