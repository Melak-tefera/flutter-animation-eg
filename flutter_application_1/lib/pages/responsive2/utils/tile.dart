import 'package:flutter/material.dart';

class Mytile extends StatelessWidget {
const Mytile({super.key});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        color: Colors.grey[500],
        height: 80,
      ),
    );
  }
}