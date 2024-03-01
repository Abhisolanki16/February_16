import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredScreen2 extends StatelessWidget {
  const StaggeredScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('0'))),
                  )),
                   StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('1'))),
                  )),
                   StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('2'))),
                  )),
                   StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    color: Colors.green,
                   child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('3'))),
                  )),
                   StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('4'))),
                  )),
                   StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    color: Colors.green,
                   child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('5'))),
                  )),
                   StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    color: Colors.green,
                   child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('6'))),
                    
                  )),
                  StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: CircleAvatar(backgroundColor: Colors.white,child: Text('7'))),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
