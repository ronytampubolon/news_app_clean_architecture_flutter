import 'package:barita/presentation/pages/bookmark.dart';
import 'package:barita/presentation/pages/home.dart';
import 'package:barita/presentation/pages/notification_screen.dart';
import 'package:barita/presentation/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  List<Widget> listScreen = [
    HomeScreen(key: const PageStorageKey("HomeScreen")),
    BookmarkScreen(key: const PageStorageKey("Bookmark")),
    NotificationScreen(key: const PageStorageKey("Notification")),
    ProfileScreen(key: const PageStorageKey("Profile")),
  ];

  Map<String, IconData> bottomNavigationItems = const {
    "Home": Ionicons.home_outline,
    "Saved": Ionicons.bookmark_outline,
    "Notification": Ionicons.notifications_outline,
    "Profile": Ionicons.person_outline,
  };
  Map<String, IconData> bottomNavigationActieIcons = const {
    "Home": Ionicons.home_sharp,
    "Saved": Ionicons.bookmark_sharp,
    "Notification": Ionicons.notifications_sharp,
    "Profile": Ionicons.person_sharp,
  };

  int _currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: bottomNavigationItems
              .map((title, icon) => MapEntry(
                  title,
                  BottomNavigationBarItem(
                    icon: Icon(icon, size: 30.0),
                    activeIcon:
                        Icon(bottomNavigationActieIcons[title], size: 30.0),
                    label: title,
                    tooltip: title,
                  )))
              .values
              .toList(),
          currentIndex: _currentScreen,
          selectedItemColor: Theme.of(context).primaryColor,
          selectedFontSize: 11.0,
          unselectedFontSize: 11.0,
          unselectedItemColor: Colors.grey,
          onTap: (index) => setState(() {
                _currentScreen = index;
              })),
    );
  }
}
