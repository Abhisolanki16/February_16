import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  const BottomNavBar2({super.key});

  @override
  State<BottomNavBar2> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar2> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HomePage",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      case 1:
        return const Center(
          child: Text(
            "Reels",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            "Gallery",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );

        case 3:
        return const Center(
          child: Text(
            "Activity",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
        case 4:
        return const Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        fixedColor: Colors.black,
        
          currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(color: Colors.black),
          onTap: _onItemTapped,
         unselectedLabelStyle: const TextStyle(color: Colors.black),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/home (1).png'),height: 25,width: 25,),
                label: 'HomePage',
                backgroundColor: Colors.white10
               
                ),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/video.png'),height: 25,width: 25,),
                label: 'Reels',
                backgroundColor: Colors.white10
        
                ),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/gallery.png'),height: 25,width: 25,),
                label: 'Gallery',
                backgroundColor: Colors.white10
            
                ),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/heart-shape-outline.png'),height: 25,width: 25,),
                label: 'Activity',
                backgroundColor: Colors.white10

                ),
                 BottomNavigationBarItem(
                icon: CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/fruit1.jpg'),),
                label: 'Profile',

                ),
          ]),
    );
  }
}
