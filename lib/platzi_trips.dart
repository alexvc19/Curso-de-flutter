import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';
import 'platzi_trips_cupertino.dart';

class PlatziTrips extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){

    return _PlatziTrips();
  }
}
class _PlatziTrips extends State<PlatziTrips>{

  int indexTap=0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SeachTrips(),
    ProfileTrips()
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:PlatziTripsCupertino()

    );
  }

}
//BottomNavigationBar sin cupertino
// widgetsChildren[indexTap],
//      bottomNavigationBar: Theme(
//        data: Theme.of(context).copyWith(
//          canvasColor: Colors.white,
//          primaryColor:  Colors.purple
//        ),
//        child: BottomNavigationBar(
//          onTap: onTapTapped,
//          currentIndex: indexTap,
//            items: [
//              BottomNavigationBarItem(
//                icon: Icon(Icons.home),
//                title: Text("Home")
//              ),
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.search),
//                  title: Text("Search")
//              ),
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.person),
//                  title: Text("Person")
//              ),
//            ]
//        ),
//      ),