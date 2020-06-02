import 'package:flutter/material.dart';
import 'package:platzitripsapp/Place/place.dart';
import 'ui/card_image_profile.dart';
import 'header_profile_appbar.dart';
class ImageCardListProfile extends StatelessWidget{

  Place place = new Place('Las vegas', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = new Place('Cancun', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
  Place place3 = new Place('Disney', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
  Place place4 = new Place('New York', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');



  @override
  Widget build(BuildContext context) {

    final Sliders =  Container(
      margin: EdgeInsets.only(
        top: 275.0,

      ),
      height: 520,
      child: Center(
           child:  ListView(
             padding: EdgeInsets.all(35.0),
             scrollDirection: Axis.vertical,
             children: <Widget>[
               CardImageProfile("assets/img/lasvegas.jpg", place),
               CardImageProfile("assets/img/beach.jpg", place2),
               CardImageProfile("assets/img/disney.jpg", place3),
               CardImageProfile("assets/img/newyork.jpg",place4),
        ],
      ),
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