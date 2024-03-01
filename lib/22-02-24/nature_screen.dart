import 'package:flutter/material.dart';

class NatureScreen extends StatelessWidget {
  const NatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: screenHeight / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://media.istockphoto.com/id/1377841262/photo/the-beautiful-scenery-of-a-tent-in-a-pine-tree-forest-at-pang-oung-mae-hong-son-province.jpg?s=612x612&w=0&k=20&c=1JvDx-16zTIeytdcC-Fa27nVJ_8SveP-omNKKlUJ-lQ='))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Oeschhine Lake Campground",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Container(
                        //margin: const EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Switzerland",
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
                const Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                const Text(
                  "41",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Call", style: TextStyle(color: Colors.blue))
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.navigation_sharp,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Route", style: TextStyle(color: Colors.blue))
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Share", style: TextStyle(color: Colors.blue))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
            )
          ],
        ),
      ),
    );
  }
}
