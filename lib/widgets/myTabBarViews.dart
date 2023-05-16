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
      child: TabBarView(controller: tabController, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            padding: const EdgeInsets.symmetric(vertical: 10),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 7,
            childAspectRatio: 0.75,
            children: List.generate(10, (index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'details');
                  },
                  child: Container(
                    height: 100,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ));
            }),
          ),
        ),
        const Text('Restaurant'),
        const Text('Conference')
      ]),
    );
  }
}
