import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredScreen extends StatelessWidget {
  const StaggeredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin : const EdgeInsets.all(10),
        height: double.infinity,
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
        
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Icon(Icons.grid_view_sharp)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Icon(Icons.wifi)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.yellow,
                  child: const Center(child: Icon(Icons.tv)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.brown,
                  child: const Center(child: Icon(Icons.map)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Icon(Icons.send)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Icon(Icons.bed)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Icon(Icons.bluetooth)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 3,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.redAccent,
                  child: const Center(child: Icon(Icons.battery_0_bar)),
                )),
                StaggeredGridTile.count(
        
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.purple.shade600,
                  child: const Center(child: Icon(Icons.monitor)),
                )),
                 StaggeredGridTile.count(
        
                crossAxisCellCount: 4,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Icon(Icons.radio)),
                )),
        
        
          ],
        ),
      ),
    ));
  }
}
