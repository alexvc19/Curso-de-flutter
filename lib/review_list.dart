import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/people.jpg","Sam Smith","5 photos", 4 ,"I like this place is greate"),
        new Review("assets/img/personimg.jpg","John Bronwt","4 photos", 3 ,"Greate place, beautiful"),
        new Review("assets/img/person3.jpg","Miranda Brewster","2 photos", 5 ,"It's an place very nice and magical"),
      ],
    );
  }

}