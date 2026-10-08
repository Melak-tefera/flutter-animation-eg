import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive2/common/commonthings.dart';

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
    ],),
    );
  }
}