import 'package:developerapp/screens/about_page.dart';
import 'package:developerapp/screens/detail_page.dart';
import 'package:developerapp/screens/homescreen.dart';
import 'package:flutter/material.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({Key? key}) : super(key: key);

  @override
  _HomePageStateState createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  List pages = [
    MainScreen(),
    AboutPage(),
    DetailPage(),
  ];
  int currentIndex= 0;
  void onTab(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar (
          unselectedFontSize: 0, ///note
          selectedFontSize: 0,   ///note
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTab,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: "Home",icon:Icon(Icons.home)),
            BottomNavigationBarItem(label: "Bar",icon:Icon(Icons.person)),
            BottomNavigationBarItem(label: "Search",icon:Icon(Icons.chat_bubble)),
          ],

        )
    );
  }
}
