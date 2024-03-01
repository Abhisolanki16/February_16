import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: const Text("Without Button & Actions"),backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,),));
  }
}