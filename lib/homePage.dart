import 'package:armenu_app/screens/Menu/menu_screen.dart';
import 'package:armenu_app/screens/Settings/settings_screen.dart';
import 'package:armenu_app/screens/VirtualTable/virtualTable_screen.dart';
import 'package:armenu_app/screens/Waiter/waiter_screen.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';


class HomePage extends StatefulWidget {

  static String routeName = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User loggedInUser;
  String loggedInUserEmail;
  String loggedInUserName;

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        loggedInUserEmail = loggedInUser.email;
        loggedInUserName = user.displayName;
        print(loggedInUserName);
        print(loggedInUserEmail);
      }
    } catch (e) {
      print(e);
    }
  }

  var _pages = [
    VirtualTable(),
    MenuScreen(),
    WaiterScreen(),
    SettingsScreen(),
  ];
  var _selectedPageIndex = 0;
  var _selectedTab = _SelectedTab.virtualTable;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      _selectedPageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        margin: EdgeInsets.all(40),
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.api_outlined),
            title: Text("Masa"),
            selectedColor: mainPrimaryColor,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.restaurant_menu_outlined),
            title: Text("Meniu"),
            selectedColor: mainPrimaryColor,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.wifi_calling_outlined),
            title: Text("Ospatar"),
            selectedColor: mainPrimaryColor,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profil"),
            selectedColor: mainPrimaryColor,
          ),
        ],
      ),
      body: _pages[_selectedPageIndex],
    );
  }
}

enum _SelectedTab { virtualTable, menu, waiter, settings }