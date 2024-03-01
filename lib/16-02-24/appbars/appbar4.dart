import 'package:flutter/material.dart';

class AppBar4 extends StatelessWidget {
  const AppBar4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("With single action button"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
    ));
  }
}
