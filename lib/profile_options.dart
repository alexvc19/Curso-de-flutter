import 'package:flutter/material.dart';

String buttonTex= "Navigate";

class ProfileOptions extends StatelessWidget{
    @override
  Widget build(BuildContext context){

    final PersonButton = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Navegando"),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            top: 80,
        ),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white
        ),
        child: Icon(
          Icons.person
        ),
      ),
    );

    final PlusButton = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Navegando"),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 50.0,
        ),
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.0),
            color: Colors.white
        ),
        child: Icon(
            Icons.add
        ),
      ),
    );

    final PButton = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Navegando"),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 50.0,

        ),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white
        ),
        child: Icon(
            Icons.email
        ),
      ),
    );

    return Container(

      margin: EdgeInsets.only(
        top: 130.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          PersonButton,
          PlusButton,
          PButton
        ],
      ),
    );

  }
  
  
}