import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Resonsive extends StatelessWidget {
  final Widget phonebody;
  final Widget desctopbody;
const Resonsive({super.key, required this.phonebody, required this.desctopbody});
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context,constraints){
        if (constraints.maxWidth<600) {
          return phonebody;
          
        } else {
          return desctopbody;
          
        }
      },
      );
  }
}