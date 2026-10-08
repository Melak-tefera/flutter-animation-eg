import 'package:flutter/material.dart';

class Mybox extends StatelessWidget {
const Mybox({super.key});
  @override
  Widget build(BuildContext context) {

    return AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  );
                }
              ),
            ),
          );
  }
}