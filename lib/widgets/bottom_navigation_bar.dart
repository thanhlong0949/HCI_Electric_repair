import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 46,
      index: 2,
      color: primaryLightColor,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: primaryColor,
      onTap: (index) => setState(() {
        selectedIndex = index;
      }),
      items: [
        Icon(
          Icons.home,
          color: selectedIndex == 0 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.person,
          color: selectedIndex == 1 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.add_circle_outline,
          color: selectedIndex == 2 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.history,
          color: selectedIndex == 3 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.settings,
          color: selectedIndex == 4 ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
