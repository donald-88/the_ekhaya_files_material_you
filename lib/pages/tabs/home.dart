import 'package:flutter/material.dart';

import '../../widgets/imageSlider.dart';
import '../../widgets/myTabBar.dart';
import '../../widgets/myTabBarViews.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

  List text = ['red', 'green', 'blue', 'yellow'];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    final double height = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ImageSlider(height: height, colors: colors, text: text),
        const SizedBox(height: 16),
        MyTabBar(tabController: tabController),
        myTabBarViews(tabController: tabController)
      ],
    );
  }
}
