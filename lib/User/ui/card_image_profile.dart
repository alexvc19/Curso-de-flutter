import 'package:flutter/material.dart';
import 'package:platzitripsapp/Place/place.dart';
import 'profile_place_info.dart';

class CardImageProfile extends StatelessWidget{
  String Image ="assets/img/lasvegas.jpg";
  Place place;
  CardImageProfile(this.Image, this.place);


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final card = Center (
    child: Container(
      width: screenWidth * 1.75,
      height: 220.0,
      margin: EdgeInsets.only(
          bottom: 100.0,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Image)
          ),
          borderRadius: BorderRadius.all(Radius.circular(17.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0,0.7)
            )
          ]
      ),
      )
    );
    return Stack(
      children: <Widget>[
        card,
        ProfilePlaceInfo(place)
      ],
    );

  }

}