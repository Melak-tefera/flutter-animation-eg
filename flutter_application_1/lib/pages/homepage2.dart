import 'package:flutter/material.dart';
class AnimationDemoPage extends StatefulWidget {
  const AnimationDemoPage({super.key});

  @override
  State<AnimationDemoPage> createState() => _AnimationDemoPageState();
}

class _AnimationDemoPageState extends State<AnimationDemoPage>with SingleTickerProviderStateMixin {

  late final AnimationController controller;
  late final Animation<double> sizeAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sizeAnimation = Tween<double>(
      begin: 100,
      end: 300,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOut,
      ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void toggleAnimation() {
    if (controller.isCompleted) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Explicit Animation')),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: sizeAnimation,
          builder: (context, child) {
            return Container(
              width: sizeAnimation.value,
              height: sizeAnimation.value,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: child,
            );
          },
          child: const Center(
            child: Icon(
              Icons.flutter_dash,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleAnimation,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}