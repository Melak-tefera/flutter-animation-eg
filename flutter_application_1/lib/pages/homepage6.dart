import 'package:flutter/material.dart';

class Phonenumber extends StatefulWidget {
const Phonenumber({super.key});

  @override
  State<Phonenumber> createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  var callhistory=[
    {
      "name":"Ganesh",
      "phono":"9380247***",
      "unread":'5',
    },
    {
      "name":"Appu",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Manju",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Appa",
      "phono":"9380247***",
      "unread":'10',
    },
    {
      "name":"Amma",
      "phono":"9380247***",
      "unread":'50',
    },
    {
      "name":"Ganesh",
      "phono":"9380247***",
      "unread":'5',
    },
    {
      "name":"Appu",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Manju",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Appa",
      "phono":"9380247***",
      "unread":'10',
    },
    {
      "name":"Amma",
      "phono":"9380247***",
      "unread":'50',
    },
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: Center(child: Text('Phone')),
      elevation: 4,
    ),
    body: ListView.builder(
      itemCount: callhistory.length,
      itemBuilder: (context, index){
        return;
      },
    ),

   
    );
  }
}