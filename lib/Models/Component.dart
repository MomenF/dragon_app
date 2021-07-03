import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Header({
  var colorHeader = Colors.amber,
  double edgeHeader = 100 ,
  String headerTitle = "Login Page",
   var titleStyle = const TextStyle(
     fontSize: 35,
     fontWeight: FontWeight.bold,
     color: Colors.white,
   ),



}){
  return Container(
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
        color: colorHeader,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(edgeHeader),)

    ),
    child: Center(child: Text(
      headerTitle,
      style: titleStyle,
    ),),
  );
}