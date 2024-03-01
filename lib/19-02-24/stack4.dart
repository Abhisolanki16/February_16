import 'package:flutter/material.dart';

class Stack4 extends StatelessWidget {
  const Stack4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutterassets.com"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?cs=srgb&dl=pexels-craig-dennis-205421.jpg&fm=jpg"),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(  
                radius: 15,
                backgroundColor: Colors.red,
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
