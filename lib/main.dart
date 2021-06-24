import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intern Task',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Raleway"
      ),
      home: Home(),
    );
  }
}
