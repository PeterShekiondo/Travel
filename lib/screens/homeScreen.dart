import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/screens/navPages/accountPage.dart';
import 'package:travel/screens/navPages/mainPage.dart';
import 'package:travel/screens/navPages/reportPage.dart';
import 'package:travel/screens/navPages/searchPage.dart';

class HomeScreen extends StatefulWidget {
 final List pages = [
    AccountPage(),
    ReportPage(),
    SearchPage(),
    MainPage()
  ];
  HomeScreen() ;
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<HomeScreen> {
  List pages = [
    MainPage(),
    ReportPage(),
    SearchPage(),
    AccountPage(),
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
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black45,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title:Text("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(title:Text("Chart"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(title:Text("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title:Text("Account"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
