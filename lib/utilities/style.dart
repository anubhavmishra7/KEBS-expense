import 'package:flutter/material.dart';

var kTitleStyle = const TextStyle(
    color: Colors.black,
    fontFamily: 'Ariel',
    fontWeight: FontWeight.bold,
    fontSize: 20.0);

var kTextStyle = const TextStyle(fontFamily: 'Serif', fontSize: 15.0);
var kColor = const Color(0xFFF6F6F7);
var text="";
var kButton = Container(
  width: 280,
  height: 48,
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffee4961)),
    child: Text(text),
  ),
);
