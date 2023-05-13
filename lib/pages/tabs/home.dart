import 'package:flutter/material.dart';

import '../../widgets/imageSlider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
  List text = ['red', 'green', 'blue', 'yellow'];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.zero,
      children: [ImageSlider(height: height, colors: colors, text: text)],
    );
  }
}
