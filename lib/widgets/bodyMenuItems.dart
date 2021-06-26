import 'package:flutter/material.dart';
import 'package:myrealestate/componets/roomItem.dart';
import 'package:provider/provider.dart';
// import 'package:myrealestate/componets/roomItem.dart';
import '/models/provider_Items.dart';

import '../componets/constant.dart';

class BodyMenuItems extends StatelessWidget {
  const BodyMenuItems({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
// final static ro
  @override
  Widget build(BuildContext context) {
    final _items = Provider.of<RoomItemList>(context).item;
    // Provider.of<Products>(context)
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50),),
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
          child: Column(
            children: [
              Container(
                height: 25,
                alignment: Alignment.topLeft,
                child: Text(
                  "All Rooms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.02,
                    color: kTextColor,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.55,
                child: GridView.builder(
                  itemCount: _items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (ctx, i) => ChangeNotifierProvider(
                    create: (ctx) {
                      // print(_items[i]);
                      return _items[i];
                    },
                    child: RoomType(),
                  ),
                ),
                // child: GridTile(child: Text("hello"),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
