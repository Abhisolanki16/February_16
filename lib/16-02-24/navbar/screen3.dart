import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        child:Column(
          children: [
          Flexible(flex:5,child: Container(width : 100,color: Colors.red,)),
          Flexible(flex:1,child: Container(width : 100,color: Colors.yellow,)),
          Flexible(flex:1,child: Container(width : 100,color: Colors.blue,)),
          Flexible(flex:1,child: Container(width : 100,color: Colors.green,)),
        ]),
      ),
    );
  }
}