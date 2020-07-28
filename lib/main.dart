import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/Home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter PDF',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}