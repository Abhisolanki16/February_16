import 'package:flutter/material.dart';

class Stack7 extends StatelessWidget {
  const Stack7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Example"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.all(30),
            color: Colors.red,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.all(60),
            color: Colors.blue,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.all(90),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
