import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      primarySwatch: Colors.green,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
