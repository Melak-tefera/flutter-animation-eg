import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller=AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.repeat();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTapDown: (details) {
          controller.stop();
        },
        onTapUp: (details) {
          controller.repeat();
        },
        child: Center(
          child: RotationTransition(
            alignment: Alignment.center,
            turns: controller,
        
        
            child: Icon(Icons.notification_add, size: 90, color: Colors.white,)
            ),
        ),
      ),
    );
  }
}