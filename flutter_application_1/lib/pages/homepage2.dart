import 'package:flutter/material.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  bool expanded = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    animation = Tween<double>(begin: 100, end: 300).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeIn),
    );

  }

  void fun1() {
    setState(() {
      expanded = !expanded;
    });
    if (expanded) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: fun1,
            child: AnimatedBuilder(
              animation: animation,
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              builder: (context, child) {
                return Transform.scale(
                  scaleX: animation.value,
                  scaleY: animation.value,
                );
                
              },
            ),
          ),
        ),
      ),
    );
  }
}