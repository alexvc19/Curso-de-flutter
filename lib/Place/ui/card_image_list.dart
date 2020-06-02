import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/lasvegas.jpg"),
          CardImage("assets/img/beach.jpg"),
          CardImage("assets/img/disney.jpg"),
          CardImage("assets/img/newyork.jpg"),

        ],
      ),
    );
  }

}