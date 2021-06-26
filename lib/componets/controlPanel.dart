
import 'package:flutter/material.dart';

import 'constant.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding:
          EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
      // height: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Control\nPanel",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.04,
                color: Colors.white),
          ),
          Image.asset("assets/images/user.png"),
        ],
      ),
    );
  
  }
}
