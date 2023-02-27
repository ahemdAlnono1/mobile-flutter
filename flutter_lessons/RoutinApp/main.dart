import 'package:flesson1/pages/chose_location.dart';
import 'package:flesson1/pages/loading.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';
// import './pages/chose_location.dart';
// import './pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/home",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/location": (context) => ChoseLocation()
    },
  ));
}
