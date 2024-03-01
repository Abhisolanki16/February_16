import 'package:flutter/material.dart';

class Stack2 extends StatelessWidget {
  const Stack2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: double.infinity,width: double.infinity,color: Colors.white,),
        Positioned(top: 50,left: 50,child: Container(height: 250,width:250,color: Colors.green,)),
        Positioned(top: 80,left: 80,child: Container(height: 250,width:250,color: Colors.red,)),
        Positioned(top: 110,left: 110,child: Container(height: 250,width:250,color: Colors.purple,)),
      ],
    );
  }
}
