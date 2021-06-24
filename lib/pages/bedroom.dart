import "package:flutter/material.dart";
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';

import '/utilties/Colorslider.dart';
import '/utilties/Scenes.dart';
import '/utilties/slider.dart';

class Bedroom extends StatefulWidget {
  // Key? key;
  final String lights;
  const Bedroom({required this.lights});

  @override
  _BedroomState createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  double val = 1;
  Color col = Colors.orange;
  bulbonoff(double val) {
    setState(() {
      if (val == 1) {
        col = Colors.orange;
      } else if (val == 0) {
        col = Colors.black45;
      } else {
        col = Colors.orange.withOpacity(val);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/bulb.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Iconfeather-home.svg",
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Iconfeather-settings.svg"),
              label: ""),
        ],
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue[800],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 35, 43, 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 175,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child:
                                    SvgPicture.asset("assets/images/arrow.svg"),
                                onTap: Navigator.of(context).pop,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Bed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Room",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            widget.lights,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/images/Group.svg"),
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                            color: col,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    scrollDirection: Axis.horizontal,
                    itemCount: slider.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(right: 17),
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: slider[index].color,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              index == 1
                                  ? Image.asset("assets/images/des.png",
                                      width: 35, fit: BoxFit.cover)
                                  : SvgPicture.asset(slider[index].img),
                              Text(slider[index].name,
                                  style: TextStyle(
                                      color: slider[index].textcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ],
                          ));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 310),
          height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "Intensity",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/solution2.svg"),
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.orange[200],
                            inactiveTrackColor: Colors.grey[400],
                            trackShape: RectangularSliderTrackShape(),
                            trackHeight: 2.5,
                            thumbColor: Colors.white,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            overlayColor: Colors.amber[100],
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: val,
                            onChanged: (value) {
                              setState(() {
                                val = value;
                                bulbonoff(value);
                              });
                            },
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/images/solution.svg"),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 35, bottom: 23),
                    child: Text(
                      "Colors",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(0),
                      itemCount: colorslide.length,
                      itemBuilder: (context, index) {
                        return index == colorslide.length
                            ? Container(
                                width: 50,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                child:
                                    SvgPicture.asset("assets/images/add.svg"),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    col = colorslide[index].col;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: colorslide[index].col,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 42, bottom: 10),
                      child: Text("Scenes",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 24))),
                  GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: (4 / 2),
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 25,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      children: scenes
                          .map(
                            (data) => (Container(
                              decoration: BoxDecoration(
                                color: data.col,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(data.img),
                                  Text(
                                    data.name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            )),
                          )
                          .toList()),
                ],
              )),
        ),
        Positioned(
          top: 290,
          right: 30,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/images/poweroff.svg"),
          ),
        ),
      ]),
    );
  }
}
