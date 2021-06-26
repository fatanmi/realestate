import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myrealestate/models/room.dart';
import 'package:myrealestate/widgets/bedRoom.dart';
import 'package:provider/provider.dart';

class RoomType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<Room>(
      builder: (context, value, child) {
        print("Rebuild Product }");
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
            BedRoom.routeName,
            arguments: {"placename": value.placename, "nooflight": value.nooflight},
            );
          },
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      // alignment: Alignment.topLeft,

                      child: SvgPicture.asset(
                        value.imgurl,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      value.placename,
                      style:
                          TextStyle(fontFamily: "Raleway", color: Colors.black),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  Text(value.nooflight,
                      style: TextStyle(
                          fontFamily: "Raleway", color: Colors.orange),
                      softWrap: true,
                      overflow: TextOverflow.fade),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
