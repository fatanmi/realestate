
import 'package:flutter/material.dart';

import 'constant.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size.height * 0.02,
        color: kTextColor,
      ),
    );
  }
}
