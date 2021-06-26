import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myrealestate/componets/bottomNav.dart';
import 'package:myrealestate/models/provider_Items.dart';
import 'package:provider/provider.dart';
import 'bodyMenuItems.dart';
import '/componets/controlPanel.dart';
import '/componets/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
static final routeName = "/homepage";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (ctx) => RoomItemList(),
      child: Scaffold(
        appBar: buildAppbar(),
        body: Container(
          height: size.height,
          color: kHeaderColor,
          child: Stack(
            children: [
              ControlPanel(size: size),
              BodyMenuItems(size: size),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(),
        
      ),
      
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kHeaderColor,
    );
  }
}