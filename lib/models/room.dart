import 'package:flutter/material.dart';

class Room  with ChangeNotifier{
  final String imgurl;
  final String placename;
  final String nooflight;

  Room({
    required this.imgurl,
    required this.placename,
    required this.nooflight,
  });
}
