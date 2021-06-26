import 'package:flutter/material.dart';
import 'package:myrealestate/models/colorItem.dart';
import 'package:myrealestate/models/room.dart';

class RoomItemList with ChangeNotifier {
  List<Room> item = [
    Room(
      imgurl: "assets/images/bed.svg",
      placename: "Bed Room",
      nooflight: "4 Lights",
    ),
    Room(
      imgurl: "assets/images/room.svg",
      placename: "Living Room",
      nooflight: "2 Lights",
    ),
    Room(
      imgurl: "assets/images/kitchen.svg",
      placename: "Kitchen",
      nooflight: "5 Lights",
    ),
    Room(
      imgurl: "assets/images/bathtube.svg",
      placename: "Bath Room",
      nooflight: "1 Light",
    ),
    Room(
      imgurl: "assets/images/house.svg",
      placename: "Outdoor",
      nooflight: "5 Lights",
    ),
    Room(
      imgurl: "assets/images/balcony.svg",
      placename: "Balcony",
      nooflight: "2 Lights",
    ),
  ];
  // List<Room> get items {
  //   return [...items];
  // }
  double slideInitial = 0;

  Colslide colorInitial = colorslide[0];
  void updateColor(int index) {
    colorInitial = colorslide[index];
    notifyListeners();
  }

  void slideEnd(double value) {
    slideInitial = value;
    notifyListeners();
    // return _slideInitial;
  }
}
