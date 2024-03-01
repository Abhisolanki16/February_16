import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget {
  const AppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(centerTitle: true,title: const Text("Center Title"),backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,),));
  }
}