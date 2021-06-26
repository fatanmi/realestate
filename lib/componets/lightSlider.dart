import 'package:flutter/material.dart';
import 'package:myrealestate/models/provider_Items.dart';
import 'package:provider/provider.dart';

class LightSlider extends StatelessWidget {
  const LightSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.orange[200],
          inactiveTrackColor: Colors.grey[400],
          trackShape: RectangularSliderTrackShape(),
          trackHeight: 2.5,
          thumbColor: Colors.white,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          overlayColor: Colors.amber[100],
          overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
        ),
        child: Consumer<RoomItemList>(builder: (context, value, child) {
          return Slider(
            value: value.slideInitial,
            onChanged: (val) {
              value.slideEnd(val);
              // print(value.slideInitial);
    
              // setState(() {
              //   val = value;
              // bulbonoff(value);
              // });
            },
          );
        }),
      ),
    );
  }
}
