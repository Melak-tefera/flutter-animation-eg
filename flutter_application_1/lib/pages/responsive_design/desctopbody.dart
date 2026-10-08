import 'package:flutter/material.dart';

class Desctopbody extends StatelessWidget {
const Desctopbody({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: Center(child: Text('D E S K T O P'))),
      body: Row(
        children: [
          // first row
          Expanded(
            child: Column(
              children: [
                // youtube video
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[400],
                      ),
                    ),
                  ),
                ),
                // comments and recommended video
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 120,
                          color: Colors.deepPurple[300],
                        ),
                        );
                    }
                    )
                  )
              ],
            ),
          ),
          // second row
          Container(
            width: 250,
            color: Colors.deepPurple[300],
          )
        ],
      ),

    
    );
  }
}