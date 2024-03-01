import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: GridView.count(
      
        crossAxisCount: 3,children: List.generate(30, (index){
          return Container(
            alignment: Alignment.center,
            color: index % 2 == 0 ? Colors.green : Colors.yellow,
            child: Text('${index + 1}'),
          );
        })),
    );
  }
}