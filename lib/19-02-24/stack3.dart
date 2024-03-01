import 'package:flutter/material.dart';

class Stack3 extends StatelessWidget {
  const Stack3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: double.infinity,width: double.infinity,color: Colors.white,),

        Container(height: 300,width:300,color: Colors.red,),
        Container(height: 250,width:250,color: Colors.blue,),
        Container(height: 200,width:200,color: Colors.green,),
      ],
    );
  }
}
