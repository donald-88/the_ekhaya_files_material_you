import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        isScrollable: true,
        splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
        unselectedLabelColor: Colors.grey,
        indicator: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const [
          Tab(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [Text("Rooms")],
            ),
          )),
          Tab(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [Text("Restaurant")],
              ),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [Text("Conference")],
              ),
            ),
          )
        ]);
  }
}
