import 'package:flutter/material.dart';
import 'package:sixteen_feb/20-04-24/Gridview/gridview_3x3.dart';
import 'package:sixteen_feb/20-04-24/Gridview/gridview_builder.dart';
import 'package:sixteen_feb/20-04-24/Gridview/gridview_count.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Gridview Demo"),
          backgroundColor: Colors.blueGrey.shade50,
          automaticallyImplyLeading: false,
          bottom: const TabBar(tabs: [
            Tab(
              text: "Gridview.count",
            ),
            Tab(
              text: 'Gridview.builder',
            ),
            Tab(text: "Gridview.extent"),
          ]),
        ),
        body: TabBarView(children: [
          const GridViewCount(),
          GridViewBuilder(),
          GridViewBuilder2(),
        ]),
      ),
    );
  }
}
