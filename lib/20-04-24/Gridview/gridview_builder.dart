import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});

  List<Map<String, dynamic>> gridList = [
    {
      'icon': 'https://cdn-icons-png.flaticon.com/128/5800/5800223.png',
      'title': 'Bicycle',
    },
    {
      'icon': 'https://cdn-icons-png.flaticon.com/128/3322/3322490.png',
      'title': 'Boat',
    },
    {
      'icon': 'https://cdn-icons-png.flaticon.com/128/2207/2207497.png',
      'title': 'Bus',
    },
    {
      'icon': 'https://cdn-icons-png.flaticon.com/128/565/565410.png',
      'title': 'Train',
    },
    {
      'icon': 'https://cdn-icons-png.flaticon.com/128/6591/6591691.png',
      'title': 'Walk',
    },
    {
      'icon': 'https://cdn-icons-png.flaticon.com/128/46/46646.png',
      'title': 'Contact',
    },
  ];

  List<Color> listColors = [
    Colors.green[100]!,
    Colors.pink[200]!,
    Colors.purple[200]!,
    Colors.pink[400]!,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.brown,
    Colors.blueGrey[300]!,
    Colors.green[300]!,
    Colors.pink[200]!,
    Colors.purple[300]!,
    Colors.pink[400]!,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.lightGreen,
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
            color: listColors[index],
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    '${gridList[index]['icon']}',
                  ),
                  Text(
                    '${gridList[index]['title']}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
          );
        },
        itemCount: gridList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
