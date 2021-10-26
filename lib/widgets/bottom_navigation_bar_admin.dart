import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/dashbroad/dashboard.dart';
import 'package:elect_repair/screens/repairman/history/history.dart';
import 'package:flutter/material.dart';

class BottomNavigationAdmin extends StatefulWidget {
  const BottomNavigationAdmin(
      {Key? key, required this.selectedIndex, required this.isReady})
      : super(key: key);
  final bool isReady;
  final int selectedIndex;

  @override
  State<BottomNavigationAdmin> createState() => _BottomNavigationAdminState();
}

class _BottomNavigationAdminState extends State<BottomNavigationAdmin> {
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
      index: widget.selectedIndex,
      color: primaryLightColor,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: primaryColor,
      onTap: (index) {
        (index != widget.selectedIndex && index == 3)
            ? Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HistoryRequest(
                    isReady: widget.isReady,
                  ),
                ),
              )
            : null;
        (index != widget.selectedIndex && index == 2)
            ? Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Dashboard(
                    isReady: widget.isReady,
                  ),
                ),
              )
            : null;
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        Icon(
          Icons.work,
          color: widget.selectedIndex == 0 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.person,
          color: widget.selectedIndex == 1 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.home,
          color: widget.selectedIndex == 2 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.history,
          color: widget.selectedIndex == 3 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.settings,
          color: widget.selectedIndex == 4 ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
