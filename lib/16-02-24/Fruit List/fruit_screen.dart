// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FruitScreen extends StatelessWidget {
  String fruit;
  FruitScreen({super.key, required this.fruit});

  getFruitImage(String name) {
    switch (name) {
      case 'Orange':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://i.pinimg.com/736x/72/d7/5c/72d75cf63786754fcde363d5cc624376.jpg')),
        );
      case 'Kiwi':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://images.pexels.com/photos/51312/kiwi-fruit-vitamins-healthy-eating-51312.jpeg?cs=srgb&dl=pexels-pixabay-51312.jpg&fm=jpg')),
        );
      case 'Apple':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://images.pexels.com/photos/1630588/pexels-photo-1630588.jpeg?cs=srgb&dl=pexels-john-finkelstein-1630588.jpg&fm=jpg')),
        );
      case 'Avocado':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://www.stockvault.net//data/2016/04/19/194199/thumb16.jpg')),
        );
      case 'Rassberry':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://img.lovepik.com/free-png/20211117/lovepik-cherries-on-a-plate-png-image_400986450_wh1200.png')),
        );
      case 'Watermelon':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://5.imimg.com/data5/SELLER/Default/2022/3/ZZ/PW/RZ/36905324/fruits-watermelons.jpg')),
        );
      case 'Dragon Fruit':
        return Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  'https://st4.depositphotos.com/1004592/23885/i/450/depositphotos_238851346-stock-illustration-pitaya-fruit-front-white-background.jpg')),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(fruit),
      ),
      body: getFruitImage(fruit),
    ));
  }
}
