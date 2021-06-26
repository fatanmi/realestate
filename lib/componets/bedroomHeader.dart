import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myrealestate/componets/roomHeader.dart';
import 'package:myrealestate/componets/roomIntensity.dart';
import 'package:myrealestate/models/provider_Items.dart';
import 'package:provider/provider.dart';

import 'constant.dart';

class BedroomHeader extends StatelessWidget {
  const BedroomHeader({
    Key? key,
    required this.size,
    required this.placename,
  }) : super(key: key);

  final Size size;
  final List<String> placename;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kHeaderColor,
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, size.height * 0.08, 0, 30),
            child: RoomHeader(placename: placename, size: size),
          ),
          RoomIntensityWidget(),
        ],
      ),
    );
  }
}
