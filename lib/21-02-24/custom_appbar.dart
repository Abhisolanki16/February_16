import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 70,
            title: const Text("My Profile"),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
             backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
            leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ),
        body: Column(children: [
          const SizedBox(
            height: 180,
            child: Center(
              child: Text(
                'Profile Details Goes Here',
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 50,
            child:const TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.directions_bike,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
          ),
          Expanded(
            child: TabBarView(children: [
              Container(
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "Bike",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "car",
                  style: TextStyle(color: Colors.white),
                )),
                // height: 220,
              ),
            ]),
          )
        ]),
      )),
    );
  }
}
