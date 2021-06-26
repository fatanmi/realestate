import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myrealestate/models/provider_Items.dart';
import 'package:provider/provider.dart';

class RoomIntensityWidget extends StatelessWidget {
  const RoomIntensityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<RoomItemList>(builder: (context, value, child) {
        return Column(
          children: [
            Container(
              child: SvgPicture.asset(
                "assets/images/Group.svg",
              ),
            ),
            Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: value.colorInitial.col,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: value.colorInitial.col.withOpacity(value.slideInitial*0.7  ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
