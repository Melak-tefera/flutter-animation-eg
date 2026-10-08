import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive2/common/commonthings.dart';

class MobileView extends StatefulWidget {
const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      drawer: drawer,
      body:Column(
        children: [
          AspectRatio(
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
          ),
        ],
      ) ,
    
    );
  }
}