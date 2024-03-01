import 'package:flutter/material.dart';

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(height: double.infinity,width:double.infinity,color: Colors.green,),
          Container(height: 250,width:250,color: Colors.blue,),
          Container(height: 150,width:150,color: Colors.pink,),
        ],
      ),
    );
  }
}
