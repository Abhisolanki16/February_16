import 'package:flutter/material.dart';
import 'appbars/appbar_list.dart';
import 'bottom_navbar/bottom_navbar.dart';
import 'bottom_navbar/bottom_navbar_2.dart';
import 'buttons.dart';
import 'Fruit%20List/listview.dart';
import 'navbar/navbar.dart';
import 'rows_columns.dart';
import 'rows_columns_2.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
     ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Buttons(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Task 1")),
    ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Buttons(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Task 2")),
         ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar1(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Bottom Navigation Bar 1")),
         ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar2(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Bottom Navigation Bar 2")),

         ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppBarList(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Different AppBars")),

         ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RowAndColumnExample(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Row Column Example 1")),
        ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RowAndColumnExample2(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Row Column Example 2")),

         ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimatedNavBar(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Task 5")),
         ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FruitList(),
              ));
        },
        style: ElevatedButton.styleFrom(
            elevation: 3,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            )),
        child: const Text("Task 6")),
          ],
        );
  }
}
