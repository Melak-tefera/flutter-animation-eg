import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Responsive2 extends StatelessWidget {
  final Widget mobileview;
  final Widget tabletview;
  final Widget desctopview;
const Responsive2({super.key, required this.mobileview, required this.tabletview, required this.desctopview});
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth<500) {
        return mobileview;
        
      } else if(constraints.maxWidth<1100){
        return tabletview;
        
      } else{
        return desctopview;
      }
    });
  }
}