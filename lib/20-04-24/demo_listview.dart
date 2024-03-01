import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Demo Listview"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
              minVerticalPadding: 10,
                title: Text('This is my title $index'),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('$index'),
                ),
                subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod "),
              ),
            );
          },
        ));
  }
}
