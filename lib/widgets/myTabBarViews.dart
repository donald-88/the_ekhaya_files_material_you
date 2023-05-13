import 'package:flutter/material.dart';

class myTabBarViews extends StatelessWidget {
  const myTabBarViews({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: TabBarView(controller: tabController, children: const [
        Text('Rooms'),
        Text('Restaurant'),
        Text('Conference')
      ]),
    );
  }
}
