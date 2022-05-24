import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/screens/navPages/accountPage.dart';
import 'package:travel/screens/navPages/mainPage.dart';
import 'package:travel/screens/navPages/reportPage.dart';
import 'package:travel/screens/navPages/searchPage.dart';

class Navigation extends StatefulWidget {
  List pages = [
    AccountPage(),
    ReportPage(),
    SearchPage(),
    MainPage()
  ];
  Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List pages = [
    AccountPage(),
    ReportPage(),
    SearchPage(),
    MainPage()
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black45,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps)),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
