// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'fruit_screen.dart';

class FruitList extends StatelessWidget {
  List<Map<String, dynamic>> fruitList = [
    {
      'image': "assets/fruit1.jpg",
      'name': 'Orange',
    },
    {
      'image': "assets/fruit2.jpg",
      'name': 'Kiwi',
    },
    {
      'image': "assets/fruit3.jpg",
      'name': 'Apple',
    },
    {
      'image': "assets/fruit4.jpg",
      'name': 'Avocado',
    },
    {
      'image': "assets/fruit5.jpg",
      'name': 'Rassberry',
    },
    {
      'image': "assets/fruit6.jpeg",
      'name': 'Watermelon',
    },
    {
      'image': "assets/fruit7.png",
      'name': 'Dragon Fruit',
    },
  ];

  FruitList({super.key});
  late String fruit_name;
  late int ind;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            title: const Text("Fruits"),
            centerTitle: true,
            leading: const Icon(Icons.menu),
            actions: const [
              Icon(Icons.search),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.more_vert),
              SizedBox(
                width: 8,
              ),
            ]),
        body: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: Colors.grey[200],
                minVerticalPadding: 20,
                  onTap: () {
                    ind = index;
                    fruit_name = fruitList.elementAt(index)['name'];
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitScreen(fruit: fruit_name),
                        ));
                  },
                  title: Text('${fruitList.elementAt(index)['name']}'),
                  leading:
                      Image.asset('${fruitList.elementAt(index)['image']}'));
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: fruitList.length),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
