import 'package:flutter/material.dart';
import 'package:travel_home_page/bottom_nav_bar/g_nav_bar.dart';
import 'package:travel_home_page/screens/favories_page.dart';
import 'package:travel_home_page/screens/home_page.dart';
import 'package:travel_home_page/screens/profile_page.dart';
import 'package:travel_home_page/screens/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SearchPage(),
    const FavoritesPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: GNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
      ),
    );
  }
}
