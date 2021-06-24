import 'package:flutter/material.dart';

class Slide {
  final String img;
  final String name;
  final Color color;
  final Color textcolor;

  Slide({required this.img, required this.name, required this.color, required this.textcolor});
}

List slider = [
  Slide(
      img: "assets/images/surface1.svg", 
      name: "Main Lights",
      color: Colors.white,
      textcolor: Colors.blue[900]!),
  Slide(
      img: "assets/images/surface2.svg",
      name: "Desk Lights",
      color: Colors.blue[900]!,
      textcolor: Colors.white),
  Slide(
      img: "assets/images/bed1.svg",
      name: "Bed Lights",
      color: Colors.white,
      textcolor: Colors.blue[900]!)
];
