import 'package:flutter/material.dart';
import 'package:siskang/components/global_app_bar.dart';
import 'package:siskang/constants.dart';
import 'package:siskang/screens/berita/berita_screen.dart';
import 'package:siskang/screens/home/home_screen.dart';
import 'package:siskang/screens/jadwal_ujian/jadwal_ujian_screen.dart';
import 'package:siskang/screens/profile/profile_screen.dart';

import '../size_config.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _title = '';

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BeritaScreen(),
    JadwalUjianScreen(),
    ProfileScreen(),
  ];

  initState() {
    _title = 'default';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            GlobalAppBar(_title),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: kPrimaryColor,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Berita",
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: "Jadwal",
              icon: Icon(Icons.calendar_month),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'default';
          }
          break;
        case 1:
          {
            _title = 'Berita';
          }
          break;
        case 2:
          {
            _title = 'Jadwal';
          }
          break;
        case 3:
          {
            _title = 'Profile';
          }
          break;
      }
    });
  }
}
