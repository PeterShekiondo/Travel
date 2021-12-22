import 'package:flutter/material.dart';
import 'package:travel/screens/detailPgae.dart';
import 'package:travel/screens/homeScreen.dart';
// import 'package:travel/screens/welcomeScreen/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
