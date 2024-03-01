import 'package:flutter/material.dart';

class Expanded_Flexible extends StatelessWidget {
  const Expanded_Flexible({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Row(
          children: [
            Container(
              width: screenWidth / 2,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Expanded(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.cyan, width: 5)),
                    child: const Text(
                      "Expanded",
                     style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth / 4,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text("Flexible"),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: screenWidth / 2,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text(
                    "Expanded",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth / 2,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text(
                    "Expanded",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: screenWidth / 4,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text(
                    "Flexible",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth / 4,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text("Flexible",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: screenWidth / 4,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text(
                    "Flexible",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth / 2,
              height: screenHeight / 8,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  border: Border.all(color: Colors.cyan, width: 5)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.cyan, width: 5)),
                  child: const Text("Expanded",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
