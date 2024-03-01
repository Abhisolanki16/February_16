import 'package:flutter/material.dart';

class Stack6 extends StatelessWidget {
  const Stack6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Stack Widget"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      body: Stack(children: [
        Positioned(
          top: 100,
          left: 30,
          child: Container(
            alignment: Alignment.centerRight,
            height: 250,
            width: 300,
            decoration: const BoxDecoration(color: Colors.red, boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Colors.black, offset: Offset(10, 10))
            ]),
             child: const RotatedBox(quarterTurns: 1,child: Text("Container 1",style: TextStyle(fontSize: 20, color: Colors.white),)),
          ),
        ),
        Positioned(
          top: 80,
          left: 10,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 200,
            width: 250,
            decoration: const BoxDecoration(color: Colors.green, boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Colors.black, offset: Offset(10, 10))
            ]),
             child: const Text("Container 2",style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
        ),
        Positioned(
          top: 60,
          right: 120,
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 200,
            decoration: const BoxDecoration(color: Colors.blue, boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Colors.black, offset: Offset(10, 10))
            ]),
            child: const Text("Container 3",style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
        )
      ]),
    );
  }
}
