import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridViewBuilder2 extends StatelessWidget {
   GridViewBuilder2({super.key});
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

  List<String> listName = [
    "Home",
    "Email",
    "Wallet",
    "Backup",
    "Car Rental",
    "Phone",
    "Camera",
    "Print",
    "Notes",
    "Alarm",
    "Business",
    "Portrait",
    "Person",
    "Bike Scooter",
    "Book",
    "Music Note",
  ];

  List<IconData> listIcons = [
    Icons.home,
    Icons.email,
    Icons.wallet,
    Icons.backup,
    Icons.car_rental,
    Icons.phone,
    Icons.camera,
    Icons.print,
    Icons.notes_outlined,
    Icons.alarm,
    Icons.business,
    Icons.portrait,
    Icons.person,
    Icons.bike_scooter,
    Icons.book,
    Icons.music_note,
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return  Card(
          color: listColors[index],
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(listIcons[index],size: 40,),
            Text(listName[index])
          ],
        ),);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: listIcons.length,

    );
  }
}