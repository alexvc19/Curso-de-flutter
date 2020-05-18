import 'package:flutter/material.dart';
import 'gradient_back_profile.dart';
import 'profile_images.dart';
class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GradientBackProfile("Profile"),
        ProfileImages("assets/img/disney.jpg")

      ],
    );
  }
}