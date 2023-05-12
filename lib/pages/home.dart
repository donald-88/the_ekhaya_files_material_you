import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List _screens = [
    const Center(
      child: Text('Home'),
    ),
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
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTabTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg',
                  color: Colors.black38),
              label: 'Home',
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
