import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive2/common/commonthings.dart';
import 'package:flutter_application_1/pages/responsive2/utils/box.dart';
import 'package:flutter_application_1/pages/responsive2/utils/tile.dart';

class TabletView extends StatefulWidget {
const TabletView({super.key});

  @override
  State<TabletView> createState() => _MobileViewState();
}

class _MobileViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      drawer: drawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
                itemBuilder: (context , index){
                  return Mybox();
                }
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index){
                return Mytile();
              }
            )
          )
        ],
      ) ,
    
    );
  }
}