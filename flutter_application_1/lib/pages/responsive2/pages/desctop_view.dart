import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive2/common/commonthings.dart';
import 'package:flutter_application_1/pages/responsive2/utils/box.dart';
import 'package:flutter_application_1/pages/responsive2/utils/tile.dart';

class DesctopView extends StatefulWidget {
const DesctopView({super.key});

  @override
  State<DesctopView> createState() => _DesctopViewState();
}

class _DesctopViewState extends State<DesctopView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
    appBar: appbar,
    body: Row(children: [
      drawer,
      Expanded(
        flex: 3,
        child: Column(
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
        ),
      ) ,
      Expanded(
        child: Container(
          color: Colors.grey[700],
        ),
      )
    ],),
    );
  }
}