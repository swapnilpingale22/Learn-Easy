import 'package:flutter/material.dart';
import 'package:learn_easy/screens/chat_screen.dart';
import 'package:learn_easy/screens/home_screen.dart';
import 'package:learn_easy/screens/hub_screen.dart';
import 'package:learn_easy/screens/learn_screen.dart';
import 'package:learn_easy/screens/profile_screen.dart';
import 'package:learn_easy/utils/constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  double bottomBarWidth = 70;
  double bottomBarHeight = 35;
  double bottomBarBorderWidth = 2;

  final List<Widget> _pages = const [
    HomeScreen(),
    LearnScreen(),
    HubScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: GlobalVariables.primaryColor,
        unselectedItemColor: GlobalVariables.secondaryColor,
        backgroundColor: GlobalVariables.backgroundColor,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: [
          // 01
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              height: bottomBarHeight,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: index == 0
                        ? GlobalVariables.primaryColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/images/Home.png',
                color: index == 0
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.secondaryColor,
              ),
            ),
            label: "Home",
          ),
          // 02
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              height: bottomBarHeight,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: index == 1
                        ? GlobalVariables.primaryColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/images/Book-open.png',
                color: index == 1
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.secondaryColor,
              ),
            ),
            label: "Learn",
          ),
          // 03
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              height: bottomBarHeight,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: index == 2
                        ? GlobalVariables.primaryColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/images/Layout.png',
                color: index == 2
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.secondaryColor,
              ),
            ),
            label: "Hub",
          ),
          // 04
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              height: bottomBarHeight,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: index == 3
                        ? GlobalVariables.primaryColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/images/Comment.png',
                color: index == 3
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.secondaryColor,
              ),
            ),
            label: "Chat",
          ),
          // 05
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              height: bottomBarHeight,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: index == 4
                        ? GlobalVariables.primaryColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset('assets/images/Profile.png'),
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
