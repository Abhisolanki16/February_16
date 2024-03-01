import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppsScreen extends StatelessWidget {
  AppsScreen({super.key});

  List<Map<String, dynamic>> apps = [
    {'image': 'assets/subway_surf.jpg', 'title': 'Subway Surfers'},
    {'image': 'assets/bingo.png', 'title': 'Bingo'},
    {'image': 'assets/coc.jpg', 'title': 'Clash of Clans'},
    {'image': 'assets/football.png', 'title': 'Football'},
    {'image': 'assets/pokemon.jpg', 'title': 'Pokemon'},
    {'image': 'assets/pubg.jpg', 'title': 'Pubg'},
    {'image': 'assets/real_racing.jpg', 'title': 'Real Racing'},
  ];

  List<Map<String, dynamic>> appsPromo = [
    {
      'image':
          'https://media.gq-magazine.co.uk/photos/645b5c3c8223a5c3801b8b26/16:9/w_1280,c_limit/100-best-games-hp-b.jpg'
    },
    {
      'image':
          'https://www.91-cdn.com/hub/wp-content/uploads/2023/10/Poki-Games.png'
    },
    {
      'image':
          'https://www.lego.com/cdn/cs/set/assets/blt0f703dfbce999d88/Video-games-Juno-Carousel-card.jpg?fit=crop&format=jpg&quality=80&width=635&height=440&dpr=1'
    },
    {
      'image':
          'https://img.utdstc.com/screen/08b/541/08b5416dbe9366941d6f55f15a72c51e49c1d4a65dd212fc259342600a4e8bd1:400'
    },
    {
      'image':
          'https://img.utdstc.com/screen/08b/541/08b5416dbe9366941d6f55f15a72c51e49c1d4a65dd212fc259342600a4e8bd1:400'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Featured Apps"),
          centerTitle: true,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 180,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(15),
                        child: Image(
                            image: NetworkImage(
                                '${appsPromo.elementAt(index)['image']}')),
                      );
                    },
                    scrollDirection: Axis.horizontal),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, bottom: 5),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Best New Apps",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 200,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.all(5),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  '${apps.elementAt(index)['image']}')),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${apps.elementAt(index)['title']}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Best New Games",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 130,
                            margin: const EdgeInsets.all(15),
                            child: Image(
                                image: AssetImage(
                                    '${apps.elementAt(index + 3)['image']}')),
                          ),
                          Text(
                            "${apps.elementAt(index + 3)['title']}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      );
                    },
                    scrollDirection: Axis.horizontal),
              ),
          
          
          
          
                SizedBox(
                height: 180,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(15),
                        child: Image(
                            image: NetworkImage(
                                '${appsPromo.elementAt(index)['image']}')),
                      );
                    },
                    scrollDirection: Axis.horizontal),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, bottom: 5),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Best New Apps",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 200,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.all(5),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  '${apps.elementAt(index)['image']}')),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${apps.elementAt(index)['title']}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Best New Games",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 130,
                            margin: const EdgeInsets.all(15),
                            child: Image(
                                image: AssetImage(
                                    '${apps.elementAt(index + 3)['image']}')),
                          ),
                          Text(
                            "${apps.elementAt(index + 3)['title']}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      );
                    },
                    scrollDirection: Axis.horizontal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
