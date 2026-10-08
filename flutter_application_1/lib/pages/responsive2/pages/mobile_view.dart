import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive2/common/commonthings.dart';
import 'package:flutter_application_1/pages/responsive2/utils/box.dart';
import 'package:flutter_application_1/pages/responsive2/utils/tile.dart';

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
          Mybox(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
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