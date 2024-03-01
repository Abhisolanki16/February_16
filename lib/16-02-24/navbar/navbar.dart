import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
  ),
  TabItem(icon: Icons.arrow_upward),
  TabItem(
    icon: Icons.add,
  ),
  TabItem(icon: Icons.arrow_downward),
  TabItem(
    icon: Icons.settings,
  ),
];

class AnimatedNavBar extends StatefulWidget {
  const AnimatedNavBar({super.key});

  @override
  State<AnimatedNavBar> createState() => _AnimatedNavBarState();
}

class _AnimatedNavBarState extends State<AnimatedNavBar> {
  int visit = 0;

  void _onItemTapped(int index) {
    setState(() {
      visit = index;
    });
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Screen1();
      case 1:
        return const Screen2();
      case 2:
        return const Center(
          child: Text("Hello World",style: TextStyle(fontSize: 32),),
        );
      case 3:
        return const Screen3();
      case 4:
        return const Screen4();

      default:
        return const Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
        body: _getDrawerItemWidget(visit),
        bottomNavigationBar: Flexible(
          child: Container(
            child: BottomBarFloating(
                items: items,
                backgroundColor: Colors.purple,
                color: Colors.white,
                colorSelected: Colors.black,
                indexSelected: visit,
                paddingVertical: 24,
                onTap: _onItemTapped),
          ),
        ),
      ),
    );
  }
}
