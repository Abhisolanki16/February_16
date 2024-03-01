import 'package:flutter/material.dart';

class AppBar3 extends StatelessWidget {
  const AppBar3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(titleSpacing: 0.2,leading: const Icon(Icons.arrow_back),title: const Text("With back button"),backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,),));
  }
}