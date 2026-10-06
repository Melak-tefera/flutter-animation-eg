import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController controller; // animation controller
  @override// initialzing controller should see all that is below
  void initState() {
    // TODO: implement initState
    controller=AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.repeat();
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  bool expand=false; // init  the process of making the animation if expanded is false do this if ont do that
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
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
          // below is the an implicit animation
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  expand=!expand; // on tap if expanded is false then do it true
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: expand? 200: 100,// if true 200 otherwise 100
                width: expand? 200:100,
                decoration: BoxDecoration(
                  color: expand? Colors.white:Colors.amber,
                  borderRadius:expand? BorderRadius.circular(20):BorderRadius.circular(10)
                ),
                ),
            ),
          )
        ],
      ),
    );
  }
}