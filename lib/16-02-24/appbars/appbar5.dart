import 'package:flutter/material.dart';

class AppBar5 extends StatelessWidget {
  const AppBar5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        leading: const Icon(Icons.arrow_back),
        title: const TextField(
          decoration: InputDecoration(
            labelText: "Search Toolbar",
            border: OutlineInputBorder(
            
          )),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
    ));
  }
}
