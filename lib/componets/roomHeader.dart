
import 'package:flutter/material.dart';

class RoomHeader extends StatelessWidget {
  const RoomHeader({
    Key? key,
    required this.placename,
    required this.size,
  }) : super(key: key);

  final List<String> placename;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: placename.length > 1
              ? Column(children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        placename.first,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.04,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        placename.last,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.04,
                            color: Colors.white),
                      ),
                    ],
                  )
                ])
              : Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      placename.first,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.04,
                          color: Colors.white),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}

