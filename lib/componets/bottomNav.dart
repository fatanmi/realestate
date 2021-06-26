

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 5,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset("assets/images/bulb.svg"),
              alignment: Alignment.centerRight,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/Iconfeather-home.svg"),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
              child:
                  SvgPicture.asset("assets/images/Iconfeather-settings.svg"),
              alignment: Alignment.centerLeft,
            ),
            label: ""),
      ],
    );
  }
}
