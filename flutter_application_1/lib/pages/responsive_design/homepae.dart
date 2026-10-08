import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive_design/desctopbody.dart';
import 'package:flutter_application_1/pages/responsive_design/phonebody.dart';
import 'package:flutter_application_1/pages/responsive_design/resonsive.dart';

class Homepage8 extends StatefulWidget {
const Homepage8({super.key});

  @override
  State<Homepage8> createState() => _Homepage8State();
}

class _Homepage8State extends State<Homepage8> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Resonsive(
        phonebody:Phonebody() ,
        desctopbody:Desctopbody() ,
      ),
    );
  }
}