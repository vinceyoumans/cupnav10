import 'package:flutter/material.dart';
import 'globals.dart';

BackGround() {
  return new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
//        image: new AssetImage("assets/blue03.jpg"),
//        image: new AssetImage(bg01),
        image: new AssetImage(TC03),
        fit: BoxFit.cover,
      ),
    ),
    child: null /* add child content content here */,
  );
}


P01Overlay(){
  return new Container(
    child: new Column(
      children: <Widget>[

      ],
    ),
  );

}