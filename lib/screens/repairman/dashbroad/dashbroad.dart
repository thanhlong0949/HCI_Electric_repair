import 'package:elect_repair/screens/repairman/dashbroad/widgets/category.dart';
import 'package:elect_repair/screens/repairman/dashbroad/widgets/request.dart';
import 'package:elect_repair/screens/repairman/dashbroad/widgets/top_navigation_bar.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar_admin.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50, child: TopNavigationBar()),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    CategogyCard(),
                    Expanded(
                      flex: 1,
                      child: RequestContainer(),
                    ),
                    BottomNavigationAdmin(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
