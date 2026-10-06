import 'package:flutter/material.dart';

class ExplicitTweenBuilder extends StatefulWidget {
const ExplicitTweenBuilder({super.key});

  @override
  State<ExplicitTweenBuilder> createState() => _ExplicitTweenBuilderState();
}

class _ExplicitTweenBuilderState extends State<ExplicitTweenBuilder> {
  double height=100;
  int keyv=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Explicit Animation')),
      ),
      body: TweenAnimationBuilder(
        key: ValueKey(keyv),
        tween: Tween<double>(begin: 100, end: height), 
        duration:Duration(milliseconds: 400) , 
        builder: (context, value, child)=> Center(child: Icon(Icons.flutter_dash,color: Colors.deepPurpleAccent,size: value,)),
        onEnd: () {
          setState(() {
            height=height==100?300:100;
            keyv++;
          });
        },
        ),
        
    
    );
  }
}