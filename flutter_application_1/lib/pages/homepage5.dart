import 'package:flutter/material.dart';

class Otheranimation extends StatefulWidget {
const Otheranimation({super.key});

  @override
  State<Otheranimation> createState() => _OtheranimationState();
}

class _OtheranimationState extends State<Otheranimation> {
  var arrIndex=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Center(child: Text('Animation'))),

    body: ListWheelScrollView(
          children: arrIndex.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text("$e", style: TextStyle(fontSize: 30, color: Colors.white),)),
              width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(21),
            ),
            ),
          )).toList(),
          physics: const FixedExtentScrollPhysics(),
          itemExtent: 200,
        ),
    );
  }
}