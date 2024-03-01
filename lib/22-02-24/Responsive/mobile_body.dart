import 'package:flutter/material.dart';
import 'package:sixteen_feb/22-02-24/Responsive/desktop_body.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;

    List<String> image = ['https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2023/01/How_To_Start_A_Coffee_Shop_-_article_image.jpg','https://getruralinternet.com/viasat/wp-content/uploads/2023/06/get-viasat-small-business-internet-nationwide-service-high-speed-small-business-internet-plans-young-woman-store-owner-scaled.jpeg'];

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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DesktopBody(),
                              ));
                        },
                        child: Image.asset('assets/computer.png',
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
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.purple.shade400),
                  accountName: const Text("Abhinav Solanki"),
                  accountEmail: const Text("abhinav@gmail.com")),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text(' Contacts '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text(' Events '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.note_sharp),
                title: const Text(' Notes '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.credit_card_sharp),
                title: const Text(' Steps '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.face),
                title: const Text(' Author '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.person_pin_rounded),
                title: const Text(' Flutter Documentation '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.bug_report),
                title: const Text(' Report an issue '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 13, top: 10),
              child: const Text(
                "Coffee Feed",
                style: TextStyle(
                    //color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 25),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: screenHeight / 4,
                        decoration: BoxDecoration(
                            image:  DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                    image[index])),
                            //color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 10,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(8),
                              
                              width: 60,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://esquirescoffee.co.uk/wp-content/uploads/2022/08/decaf-vs-reg-coffee-scaled.jpg')),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
           
          ],
        ));
  }
}



//  Container(
//                 margin: const EdgeInsets.all(10),
//                 height: screenHeight / 4,
//                 decoration: BoxDecoration(
//                     image: const DecorationImage(
//                         fit: BoxFit.fill,
//                         image: NetworkImage(
//                             'https://www.barniescoffee.com/cdn/shop/articles/bar-1869656_1920.jpg?v=1660683986')),
//                     //color: Colors.amber,
//                     borderRadius: BorderRadius.circular(20)),
//               ),
//               Container(
//                 child: GridView.builder(
//                   shrinkWrap: true,
//                   physics: const BouncingScrollPhysics(),
//                   itemCount: 10,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       margin: const EdgeInsets.all(8),
//                       //height: screenHeight / 10,
//                       width: 40,
//                       decoration: BoxDecoration(
//                           image: const DecorationImage(
//                               image: NetworkImage(
//                                   'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee-500x500.png')),
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(20)),
//                     );
//                   },
//                 ),
//               ),