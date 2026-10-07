import 'package:flutter/material.dart';

class Otheranimation extends StatefulWidget {
  const Otheranimation({super.key});

  @override
  State<Otheranimation> createState() => _OtheranimationState();
}

class _OtheranimationState extends State<Otheranimation> {
  final List<int> arrIndex = List.generate(20, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Animation')),
      ),
      body: Center(
        // Give the wheel a fixed height
        child: SizedBox(
          height: 250, // total visible height of the wheel
          child: ListWheelScrollView.useDelegate(
            itemExtent: 50, // height of each item (must be consistent)
            physics: const FixedExtentScrollPhysics(),
            diameterRatio: 1.5, // controls curvature; adjust if you like
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: arrIndex.length,
              builder: (context, index) {
                final e = arrIndex[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 4.0,
                  ),
                  child: Container(
                    // Don't force a height here; let itemExtent control it
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Center(
                      child: Text(
                        '$e',
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}