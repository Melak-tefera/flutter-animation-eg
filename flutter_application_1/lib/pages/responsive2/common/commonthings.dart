import 'package:flutter/material.dart';

var appbar= AppBar(
        backgroundColor: Colors.grey[900],
      );

var drawer= Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(child: Icon(
              Icons.ice_skating_rounded,
              size: 55,
              color: Colors.white,

              )
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              title: Text("D A S H B O A R D", style: TextStyle( color: Colors.white, fontSize: 15),),
            ),
            ListTile(
              leading: Icon(
                Icons.chat,
                color: Colors.white,
                size: 30,
              ),
              title: Text("M E S S A G E", style: TextStyle( color: Colors.white, fontSize: 15),),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              title: Text("S E T T I N G", style: TextStyle( color: Colors.white, fontSize: 15),),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
                size: 30,
              ),
              title: Text("L O G O U T", style: TextStyle( color: Colors.white, fontSize: 15),),
            ),
            
          ],
        ),
      );