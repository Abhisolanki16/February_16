import 'package:flutter/material.dart';
import 'appbar1.dart';
import 'appbar2.dart';
import 'appbar3.dart';
import 'appbar4.dart';
import 'appbar5.dart';
import 'appbar6.dart';
class AppBarList extends StatelessWidget {
  const AppBarList({super.key});

  // List<Widget> appbarlist = [
  //   const AppBar1(),
  //   const AppBar2(),
  //   const AppBar3(),
  //   const AppBar4(),
  //   const AppBar5(),
  //   const AppBar6(),
  // ];
  // int index = 0;

  // getAppBar(index){
  //   switch(index){
  //     case 0: return const AppBar1();
  //     case 1: return const AppBar2();
  //     case 2: return const AppBar3();
  //     case 3: return const AppBar4();
  //     case 4: return const AppBar5();
  //     case 5: return const AppBar6(); 
  //     default : const Text("Error");
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const AppBar1(),));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              child: const Text("AppBar 1")),

               ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBar2(),));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              child: const Text("AppBar 2")),

               ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBar3()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              child: const Text("AppBar 3")),

               ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBar4()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              child: const Text("AppBar 4")),

               ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBar5()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              child: const Text("AppBar 5")),

               ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBar6()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              child: const Text("AppBar 6")),

        ]),
      ),
    );
  }
}
