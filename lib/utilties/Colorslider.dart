import 'package:flutter/material.dart';

class Colslide {
  final Color col;

  Colslide(this.col);
}

List colorslide = [
  Colslide(Colors.redAccent.withOpacity(0.6)),
  Colslide(Colors.green.withOpacity(0.6)),
  Colslide(Colors.lightBlue.withOpacity(0.6)),
  Colslide(Colors.blueGrey.withOpacity(0.6)),
  Colslide(Colors.purple.withOpacity(0.6)),
  Colslide(Colors.brown[300]!.withOpacity(0.6))
];
