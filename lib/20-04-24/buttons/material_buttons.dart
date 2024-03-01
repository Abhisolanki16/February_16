import 'package:flutter/material.dart';

class MaterialButtons extends StatelessWidget {
  const MaterialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: const Text("Buttons"),
          backgroundColor: Colors.blue,
          actions: [
            PopupMenuButton<int>(
                itemBuilder: (context) => [
                      const PopupMenuItem(child: Text("Mark as read")),
                      const PopupMenuItem(child: Text("Mute Notifications")),
                      const PopupMenuItem(child: Text("Settings")),
                    ]),
          ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Default Material Button",
                style: TextStyle(color: Colors.black),
              )),
          TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  Text(
                    "Material Button with Icon",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              )),
          const InkWell(
            child: Text(
              "Disabled Material Button",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const InkWell(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.add),
              Text(
                "Disabled Material Button Icon",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: TextButton(
              child: const Text("Border Material Button",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {},
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.green)),
            child: TextButton(
              child: const Text("Rounded Material Button",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {},
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.red)),
            child: TextButton(
              child: const Text("Customize Rounded Material Button",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {},
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.blue)),
            child: TextButton(
              child: const Text("Customize Text Style With Label",
                  style: TextStyle(
                      color: Colors.black, fontStyle: FontStyle.italic)),
              onPressed: () {},
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(width: 2, color: Colors.blue)),
            child: TextButton(
              child: const Text("Color Fill Material Button",
                  style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
          )
        ]),
      ),
    ));
  }
}
