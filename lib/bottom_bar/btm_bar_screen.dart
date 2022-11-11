import 'package:coconut_app/business_screen/business_screen.dart';
import 'package:coconut_app/categorie_screen/categorie_screen.dart';
import 'package:coconut_app/home_screen/home_screen.dart';
import 'package:coconut_app/king_coconut/king_screen.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  List _pages = [
    HomeScreen(),
    BusinessScreen(),
    CategorieScreen(),
    KingScreen(),
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_pages[_selectedIndex]['title']),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.lightBlue.shade200,
        onTap: _selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              _selectedIndex == 0 ? Icons.home : Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(
              _selectedIndex == 1 ? Icons.search_rounded : Icons.search_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(
              _selectedIndex == 2 ? Icons.message : Icons.message,
            ),
          ),
          BottomNavigationBarItem(
            label: "User",
            icon: Icon(
              _selectedIndex == 3 ? Icons.person : Icons.person,
            ),
          )
        ],
      ),
    );
  }
}
