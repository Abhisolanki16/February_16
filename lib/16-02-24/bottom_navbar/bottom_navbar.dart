import 'package:flutter/material.dart';

class BottomNavBar1 extends StatefulWidget {
  const BottomNavBar1({super.key});

  @override
  State<BottomNavBar1> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),
        );
      case 1:
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            child: const Text("ADD"),
          ),
        );
      case 2:
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            foregroundColor: const Color.fromARGB(255, 223, 197, 197),
            shape: const CircleBorder(side: BorderSide(width: 3)),
            child: const Icon(Icons.warning),
          ),
        );

      case 3:
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Icon(Icons.shopping_cart)
          ),
        );

      default:
        return const Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _getDrawerItemWidget(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                label: 'Favorites',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.music_note,
                  color: Colors.white,
                ),
                label: 'Music',
                backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books_outlined,
                  color: Colors.white,
                ),
                label: 'Places',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper,
                  color: Colors.white,
                ),
                label: 'News',
                backgroundColor: Colors.yellow),
          ]),
    );
  }
}
