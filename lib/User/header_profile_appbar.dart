import 'package:flutter/material.dart';
import 'gradient_back_profile.dart';
import 'ui/profile_details.dart';
import 'ui/profile_options.dart';
class HeaderProfileAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(

      children: <Widget>[
        GradientBackProfile("Profile"),
        ProfileDetails(),

      ],
    );
  }

}