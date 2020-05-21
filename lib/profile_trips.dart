import 'package:flutter/material.dart';
import 'package:platzitripsapp/header_appbar.dart';
import 'profile_photos_list.dart';
import 'gradient_back_profile.dart';
import 'header_profile_appbar.dart';
class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeaderProfileAppbar()
      ],
    );
  }
}