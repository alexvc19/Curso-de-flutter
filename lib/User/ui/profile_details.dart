import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'buton_bar.dart';

String pathImage = "assets/img/personimg.jpg";
String UserName = "Pathum Tzoo";
String Email = "Correo@gmail.com";

class ProfileDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/img/personimg.jpg")
        ),
      ),
    );


    final userName = Container(
      margin: EdgeInsets.only(
        top: 10.0,
          left: 20.0
      ),
      child: Text(
        UserName,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Lato',
          fontSize: 17.0,
        ),
      ),
    );


    final userComment = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
      ),
      child: Text(
        Email,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        style: TextStyle(
          color: Colors.white10,
            fontFamily: 'Lato',
            fontSize: 12.0,
            fontWeight: FontWeight.w900
        ),
      ),

    );


    final userDetail = Container(
        margin: EdgeInsets.only(
            top: 20.0,
           left: 10.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
            userComment,

          ],)
    );

    final boxMain =  Container(
      margin: EdgeInsets.only(
        top: 100.0,
        left: 20.0,
      ),
      child: Row(
        children: <Widget>[
          photo,
          userDetail,
        ],
      ),
    );


    return Column(
      children: <Widget>[
        boxMain,
        ButtonsBar()
      ],

    );

  }

}