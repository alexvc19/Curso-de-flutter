import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'search_trips.dart';
import 'User/home_trips.dart';
import 'User/profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              backgroundColor: Color(0x33FFFFFF),
            items: [
              BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo),
            title: Text("")
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo),
              title: Text("")
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              title: Text("")
          ),
        ]
        ),
          // ignore: missing_return
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SeachTrips(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrips(),
                );
                break;

            }
          },
      ),
    );
  }


}

//