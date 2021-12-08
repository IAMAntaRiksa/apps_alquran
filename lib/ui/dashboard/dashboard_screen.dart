import 'package:alquran/ui/home/alquran/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const String routeName = '/dashboard';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndexBody = 0;

  final List<Widget> _dashboardBodyWidgets = <Widget>[
    const HomeScreenWidget(),
    const Placeholder(color: Colors.black),
    const Placeholder(color: Colors.blue),
    const Placeholder(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _dashboardBodyWidgets[_selectedIndexBody],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
        items: _mainMenuItems(),
        currentIndex: _selectedIndexBody,
        onTap: (index) {
          setState(() {
            _selectedIndexBody = index;
          });
        },
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }

  List<BottomNavigationBarItem> _mainMenuItems() {
    return <BottomNavigationBarItem>[
      _mainMenuItemWidget('Home', Icons.home),
      _mainMenuItemWidget('Mid', Icons.ac_unit_rounded),
      _mainMenuItemWidget('Faforite', Icons.favorite),
    ];
  }

  BottomNavigationBarItem _mainMenuItemWidget(
      String menuTitle, IconData iconData) {
    return BottomNavigationBarItem(
      activeIcon: Icon(iconData),
      icon: Icon(iconData),
      label: menuTitle,
    );
  }
}
