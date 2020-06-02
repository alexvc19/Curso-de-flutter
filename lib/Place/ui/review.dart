import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/img/personimg.jpg";
  String name ="Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  double review;


  Review(this.pathImage, this.name, this.details,this.review, this.comment);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );
    var star = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );



    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0,
        ),
      ),

    );

    final userInfo = Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 3.0
        ),

        child: Center(
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
        )
    );
    final userReview = Row(
      children: <Widget>[
          star,
          star,
          star,
          star,
          star_border

      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 12.0,
            fontWeight: FontWeight.w900
        ),
      ),

    );


    final userDetail = Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
            Row(
              children: <Widget>[
                userInfo,
                userReview
              ],
            ),
            userComment
          ],)
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        ),
      ),

    );


    return Row(
      children: <Widget>[
        photo,
        userDetail
      ],
    );
  }
}