import 'package:flutter/material.dart';

class DemoGridView extends StatelessWidget {
  const DemoGridView({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight -25)/4;
    final double itemWidth = size.width / 2;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Demo Gridview"),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade400,
        body: GridView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.all(10),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Container(padding: const EdgeInsets.all(8),alignment: Alignment.topLeft,child: Text('This is my title $index',style: const TextStyle(fontWeight: FontWeight.bold))),
              Flexible(child: Container(padding: const EdgeInsets.all(8),child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  consectetur adipiscing elit, sed do eiusmod')))
          ]),); 
          },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: (itemWidth / itemHeight)/1),
    
        )
      );
  }
}
