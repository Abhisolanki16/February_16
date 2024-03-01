import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  List<String> category = ['All', 'Hp', 'Dell', 'lenovo', 'Acer', 'Zebronics'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Homepage"),
          //actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        ),
        body: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20, top: 15),
            child: const Text(
              "Mechanical Keyboard",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            //color: Colors.amber,
            height: 50,
            child: ListView.builder(
              padding: const EdgeInsets.all(5),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(5),
                          disabledBackgroundColor: Colors.grey,
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      child: Text(category[index]),
                    ));
              },
              itemCount: category.length,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            //height: double.infinity,
            //width: 200,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const Card(child: Text("sd"),);
              },
            ),
          )
        ]),
      ),
    );
  }
}
