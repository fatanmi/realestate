import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myrealestate/componets/bedroomHeader.dart';
import 'package:myrealestate/componets/bottomNav.dart';
import 'package:myrealestate/componets/constant.dart';
import 'package:myrealestate/componets/lightSlider.dart';
import 'package:myrealestate/componets/roomColorWidget.dart';
import 'package:myrealestate/componets/sectionHeader.dart';
import 'package:myrealestate/models/colorItem.dart';
import 'package:myrealestate/models/provider_Items.dart';
import 'package:provider/provider.dart';

class BedRoom extends StatelessWidget {
  const BedRoom({Key? key}) : super(key: key);
  static final routeName = "/bedroom";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    // final provider = Provider.of<RoomItemList>(context).slideInitial;
    final placename = routeArgs["placename"]!.split(" ");
    final nooflight = routeArgs["nooflight"];
    return ChangeNotifierProvider(
      create: (ctx) => RoomItemList(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          child: Stack(
            children: [
              BedroomHeader(size: size, placename: placename),
              Positioned(
                height: size.height * 0.6,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: kDefaultPadding * 3,
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                      )
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width,
                            padding:
                                EdgeInsets.only(bottom: kDefaultPadding / 2),
                            child: SectionHeader(
                              size: size,
                              text: 'Intensity',
                            ),
                          ),
                          Container(
                            width: size.width,
                            child: Container(
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.,

                                children: [
                                  SvgPicture.asset(
                                      "assets/images/solution1.svg"),
                                  LightSlider(),
                                  SvgPicture.asset(
                                      "assets/images/solution.svg"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                                top: kDefaultPadding / 2,
                                bottom: kDefaultPadding / 2),
                            child: SectionHeader(
                              size: size,
                              text: 'Colors',
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  height: size.width * 0.07,
                                  width: size.width * 0.8,
                                  child: RoomColorWidget(size: size),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                                top: kDefaultPadding / 2,
                                bottom: kDefaultPadding / 2),
                            child: SectionHeader(
                              size: size,
                              text: 'Scenes',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
