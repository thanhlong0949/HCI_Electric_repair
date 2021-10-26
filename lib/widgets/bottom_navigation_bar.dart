import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/history/history.dart';
import 'package:elect_repair/screens/customer/request/customer_request.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.selectedIndex})
      : super(key: key);
  final int selectedIndex;
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 46,
      index: currentIndex,
      color: primaryLightColor,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: primaryColor,
      onTap: (index) {
        (index != widget.selectedIndex && index == 3)
            ? Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HistoryRequest(),
                ),
              )
            : null;
        (index != widget.selectedIndex && index == 2)
            ? Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CustomerRequest(),
                ),
              )
            : null;
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        Icon(
          Icons.home,
          color: currentIndex == 0 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.person,
          color: currentIndex == 1 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.add_circle_outline,
          color: currentIndex == 2 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.history,
          color: currentIndex == 3 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.settings,
          color: currentIndex == 4 ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
