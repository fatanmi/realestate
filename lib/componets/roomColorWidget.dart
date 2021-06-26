
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myrealestate/models/colorItem.dart';
import 'package:myrealestate/models/provider_Items.dart';
import 'package:provider/provider.dart';

class RoomColorWidget extends StatelessWidget {
  const RoomColorWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(0),
      itemCount: colorslide.length,
      itemBuilder: (context, index) {
        return index == colorslide.length
            ? Container(
                width: size.width * 0.07,
                height: 60,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  // color: Colors.black87,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: SvgPicture.asset(
                    "assets/images/add.svg"),
              )
            : Consumer<RoomItemList>(
                builder: (context, value, child) {
                return GestureDetector(
                  onTap: () {
                    // print(index);
                    value.updateColor(index);
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        2, 0, 2, 0),
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                      color:
                          colorslide[index].col,
                      borderRadius:
                          BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                );
              });
      },
    );
  }
}
