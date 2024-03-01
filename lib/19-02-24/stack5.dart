import 'package:flutter/material.dart';

class Stack5 extends StatelessWidget {
  const Stack5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: const Text("Stack Widget"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      body: Stack(
        children: [
          Positioned(
              left: 40,
              top: 50,
              child: Container(
                height: 350,
                width: 300,
                decoration: const BoxDecoration(color: Colors.red, boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      offset: Offset(20, 20))
                ]),
                child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "Container 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )),
          Positioned(
              left: 25,
              top: 30,
              child: Container(
                height: 300,
                width: 200,
                decoration:
                    const BoxDecoration(color: Colors.green, boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      offset: Offset(20, 20)),
                ]),
                child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Container 2",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )),
              
        ],
      ),
    );
  }
}
