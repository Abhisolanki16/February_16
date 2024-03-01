import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestaurantScreen extends StatelessWidget {
  RestaurantScreen({super.key});

  List<String> imagePath = [
    "https://www.shutterstock.com/image-photo/spinach-egg-curry-indian-non-260nw-2198157045.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkamh67O4aDKsSBhZXh-kry8LueQLhyAPUfEF-URLs4TkSMu0MApH48Gnua86nQDAP_lw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaPhtUs-Msb4a-ehBidT5WXwk38xc5rmCdzDa3BmWVCLk_0XwkR2UV5v91bWXB39o-n5A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBCtNLoXyoqD0wD49mqV0U6zjnLGsmGrD78yJUy3z7Dzreo8mUwJIXBWvdbQtNcOn4PQI&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU5WK45f0F_9Y39v0h98G4BOwCS2UIReB8YdTZ0rwq1Td6vCjJWTD49hdR0NdhBikih_8&usqp=CAU"
  ];

  List<String> dishName = [
    'Shahi Paneer',
    "Dal Bati",
    'Mix Veg',
    'Pav Bhaji',
    'Undhiyu'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant Menu"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.menu))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Container(
              padding: const EdgeInsets.only(left: 10,top: 10),
              height: 150,
              // color: Colors.amber,
              child: ListView.builder(
                itemCount: imagePath.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(80)),
                            color: Colors.black,
                            image: DecorationImage(
                              
                                fit: BoxFit.fill,
                                image: NetworkImage(imagePath[index]))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        dishName[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              margin:  const EdgeInsets.only(top: 5, left: 20, right: 20),
              height: 180,
              
              decoration: BoxDecoration(
               
                image:  const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://img.taste.com.au/qwRsc_iL/w720-h480-cfill-q80/taste/2018/06/july-18_indian-style-potatoes-138753-1.jpg")),
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
            ),
            Container(margin:  const EdgeInsets.only(top: 5, left: 20, right: 20),child: const Text("Liven up basic baked potatoes with these incredibly colourful and tasty Indian inspired tray bake!"),),
            
            const SizedBox(height: 10,),
            
            Container(
              margin:  const EdgeInsets.only(top: 5, left: 20, right: 20),
              height: 180,
              //width: 200,
              decoration: BoxDecoration(
               
                image:  const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://manjulaskitchen.com/wp-content/uploads/everyday-lunch-menu.jpg")),
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
            ),
            Container(margin:  const EdgeInsets.only(top: 5, left: 20, right: 20),child: const Text("Liven up basic baked potatoes with these incredibly colourful and tasty Indian inspired tray bake!"),)
                    ],
                  ),
          )),
    );
  }
}
