import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/responsive2/common/commonthings.dart';

class TabletView extends StatefulWidget {
const TabletView({super.key});

  @override
  State<TabletView> createState() => _MobileViewState();
}

class _MobileViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appbar,
      drawer: drawer,
    
    );
  }
}