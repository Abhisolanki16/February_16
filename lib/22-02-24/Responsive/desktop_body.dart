import 'package:flutter/material.dart';
import 'package:sixteen_feb/22-02-24/Responsive/mobile_body.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          title: const Text(
            "Coffee Shop",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            SizedBox(
              height: 35,
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/smartphone.png',
                          color: Colors.white)),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      child: Image.asset('assets/layout.png',
                          color: Colors.white)),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ]),
      body: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return row_col(screenHeight: screenHeight, screenWidth: screenWidth);
        },
      ),
    );
  }
}

class row_col extends StatelessWidget {
  const row_col({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // color: Colors.amber,
          margin: const EdgeInsets.all(10),
          height: screenHeight / 4,
          width: screenWidth / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://paperplanedesign.in/cdn/shop/articles/Artboard_1_b040da84-54f9-4a41-9b58-804bfdd410b5.jpg?v=1665819648'))),
        ),
        Expanded(
     
          child: GridView.builder(
            itemCount: 10,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                //width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://static.scientificamerican.com/sciam/cache/file/4A9B64B5-4625-4635-848AF1CD534EBC1A_source.jpg?w=1200')),
                  color: Colors.black,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
