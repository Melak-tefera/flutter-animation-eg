import 'package:flutter/material.dart';

class Tweenanimation2 extends StatefulWidget {
const Tweenanimation2({super.key});

  @override
  State<Tweenanimation2> createState() => _Tweenanimation2State();
}

class _Tweenanimation2State extends State<Tweenanimation2> with SingleTickerProviderStateMixin{
  late AnimationController controller ;
  late Animation animation;
  late Animation coloranimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation=Tween(begin:200.0, end: 400.0).animate(controller);
    coloranimation= ColorTween(begin: Colors.blue, end: Colors.orange).animate(controller);
    controller.addListener((){setState(() {});});
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Center(child: Text('Tween animation'))),

    body: Center(
          child: Container(
            height: animation.value,
            width: animation.value,
            color: coloranimation.value,
          ),
        ),
    );
  }
}