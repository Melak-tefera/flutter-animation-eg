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
        // Constrain height so ListWheelScrollView works correctly
        child: SizedBox(
          height: 300, // adjust as needed
          child: ListWheelScrollView(
            itemExtent: 60, // each item height; adjust to fit your design
            physics: const FixedExtentScrollPhysics(),
            children: arrIndex
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Container(
                        width: double.infinity,
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
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}