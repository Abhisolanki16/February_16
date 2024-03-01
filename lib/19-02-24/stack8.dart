import 'package:flutter/material.dart';

class Stack8 extends StatelessWidget {
  const Stack8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: const Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://i.pinimg.com/236x/bd/35/ca/bd35caa1d66da3a15ed952b4ac1010f7.jpg')),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              width: 320,
              margin: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child:  Column(children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "New York",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.",
                    style: TextStyle(
                        fontSize: 14,
                      
                        color: Colors.black),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
