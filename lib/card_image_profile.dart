import 'package:flutter/material.dart';


class CardImageProfile extends StatelessWidget{
  String Image ="assets/img/lasvegas.jpg";

  CardImageProfile(this.Image);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      width: 370.0,
      height: 200.0,
      margin: EdgeInsets.only(

          bottom: 80.0,
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
    );
    return Stack(
      children: <Widget>[
        card,
      ],
    );

  }

}