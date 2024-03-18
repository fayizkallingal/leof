import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leof/Screens/bottomScreens/CartScreen.dart';
import 'package:leof/Screens/bottomScreens/Home_Screen.dart';
import 'package:leof/Screens/bottomScreens/favourieScreen.dart';
import 'package:leof/Screens/bottomScreens/profileScreen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const FavourScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
        floatingActionButton: SafeArea(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.qr_code,
            ),
            backgroundColor: Color.fromARGB(255, 21, 207, 27),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            CupertinoIcons.home,
            CupertinoIcons.cart,
            CupertinoIcons.heart,
            CupertinoIcons.profile_circled,
          ],
          activeIndex: pageIndex,
          gapLocation: GapLocation.center,
          activeColor: const Color.fromARGB(255, 21, 207, 27),
          iconSize: 35,
          notchSmoothness: NotchSmoothness.softEdge,
          inactiveColor: Colors.black.withOpacity(0.6),
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ));
  }
}
