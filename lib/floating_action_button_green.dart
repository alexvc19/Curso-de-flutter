import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _FloatingActionButtonGreen();
  }

}
class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool isFav = false;

  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(isFav ? 'Fav removed' : 'Fav added'),
        )
    );
    setState(() {
      isFav = !isFav;
    });
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          isFav? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}