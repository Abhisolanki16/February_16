import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink.shade400,
            title: const Text('Tab Bar'),
            centerTitle: true,
            foregroundColor: Colors.white,
          ),
          body: Column(children: [
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.pink.shade700,
                    indicatorColor: Colors.transparent,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink.shade700,
                        border:
                            Border.all(width: 2, color: Colors.pink.shade700)),
                    tabs: [
                      Tab(
                        child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 1, color: Colors.pink.shade700)),
                            child: const Text("Chat")),
                      ),
                      Tab(
                        child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 1, color: Colors.pink.shade700)),
                            child: const Text("Status")),
                      ),
                      Tab(
                        child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 1, color: Colors.pink.shade700)),
                            child: const Text("Call")),
                      ),
                    ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 580,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Call list $index"),
                    subtitle: const Text("Tab bar ui"),
                    trailing:  const Icon(Icons.arrow_right_alt ),
                  );
                },
              ),
            )
          ]),
        ));
  }
}

