import 'package:flutter/material.dart';
import 'review.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );
    final title_start = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left:20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),

        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border
          ],
        )
      ],
    );
    final descrition = Container(
      margin: EdgeInsets.only(
        top: 15.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(descriptionPlace,
        style: TextStyle(
        fontSize: 15.0,
        fontFamily: "Lato",
        color: Color(0xFF56575a)
      ),
        textAlign: TextAlign.justify,
      ),
    );
    final content = Container(
      child: Column(
        children: <Widget>[
          title_start,
          descrition

        ],
      ),
    );
    return content;
  }

}