import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        child: Row(
          children: [
          Flexible(flex:1,child: Container(height : 150,color: Colors.red,)),
          Flexible(flex:1,child: Container(height : 150,color: Colors.yellow,)),
          Flexible(flex:1,child: Container(height : 150,color: Colors.blue,)),
          Flexible(flex:1,child: Container(height : 150,color: Colors.green,)),
        ]),
      ),
    );
  }
}