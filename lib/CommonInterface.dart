import 'package:flutter/material.dart';
import 'SearchPage.dart';

import 'homePage.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'profilePage.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() {
    return _InterfaceState();
  }
}

List keys = [
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
];

class _InterfaceState extends State<Interface> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const SearchPage(),
    const profilePage(),
  ];
  final cantroller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this is the inside functionality of the navigation bar
      body: Navigator(
        // i have stacked all the pages and the navigator is below it so that it is visible even when i change the screen
        key: keys[_currentIndex],
        initialRoute: "/",
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
              builder: (context) => _screens[_currentIndex]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: GNav(
          selectedIndex: _currentIndex,

          onTabChange: (index) {
            setState(() {
              _currentIndex =
                  index; // on tap the index will become the index on which i am tapping
            });
          },
          // here i start the desing of the navigation bar
          duration: const Duration(milliseconds: 1000),

          backgroundColor: Colors.white54,
          color: const Color.fromARGB(255, 128, 126, 126),
          activeColor: const Color.fromARGB(
              255, 21, 21, 21), // this is the color when i tap on the icon
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
              iconActiveColor: Colors.black,
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              iconActiveColor: Colors.black,
            ),
            GButton(
              icon: Icons.add_box,
            ),
            GButton(
              icon: (Icons.person_2_outlined),
              text: 'Profile',
              iconActiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
