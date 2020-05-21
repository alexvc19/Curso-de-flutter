import 'package:flutter/material.dart';
import 'card_image_profile.dart';
import 'header_profile_appbar.dart';
class ImageCardListProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final Sliders =  Container(
      margin: EdgeInsets.only(
        top: 275.0,
      ),
      height: 460,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/img/lasvegas.jpg"),
          CardImageProfile("assets/img/beach.jpg"),
          CardImageProfile("assets/img/disney.jpg"),
          CardImageProfile("assets/img/newyork.jpg"),
        ],
      ),
    );
    final alineacion = Stack(
      children: <Widget>[
        HeaderProfileAppbar(),
        Sliders
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        alineacion
      ],
    );
  }

}