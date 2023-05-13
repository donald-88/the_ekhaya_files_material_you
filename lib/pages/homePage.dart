import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'tabs/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List _screens = [
    Home(),
    const Center(
      child: Text('Notifications'),
    ),
    const Center(
      child: Text('Booking'),
    ),
    const Center(
      child: Text('Profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTabTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg',
                  color: Colors.black38),
              label: 'HomePage',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/notifications.svg',
                color: Colors.black38,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/calendar.svg',
                color: Colors.black38,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/user.svg',
                    color: Colors.black38),
                label: 'Profile')
          ],
        ),
        body: _screens[currentIndex]);
  }
}
