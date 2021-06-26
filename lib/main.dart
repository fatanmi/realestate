import 'package:flutter/material.dart';
import 'package:myrealestate/widgets/bedRoom.dart';
import '/widgets/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Raleway",
        primaryColor: Color(0xFF0C9869),
        primarySwatch: Colors.blue,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      home: HomePage(),
      routes:{
        BedRoom.routeName:(ctx)=>BedRoom(),
        HomePage.routeName:(ctx)=> HomePage(),

      }
    );
  }
}


  