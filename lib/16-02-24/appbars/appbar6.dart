import 'package:flutter/material.dart';

class AppBar6 extends StatelessWidget {
  const AppBar6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
        ],
        leading: const Icon(Icons.menu),
        title: const Text("Page Title"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
    ));
  }
}
