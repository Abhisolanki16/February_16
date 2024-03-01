import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:sixteen_feb/20-04-24/buttons/different_buttons.dart';
import 'package:sixteen_feb/21-02-24/custom_appbar.dart';
import 'package:sixteen_feb/22-02-24/Responsive/homepage.dart';
import 'package:sixteen_feb/22-02-24/exp_flex.dart';
import 'package:sixteen_feb/22-02-24/nature_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StaggeredGridDemo());
  }
}

class StaggeredGridDemo extends StatelessWidget {
  StaggeredGridDemo({super.key});

  List<String> images = [
    'https://media.gettyimages.com/id/948752828/vector/abstract-squares-background.jpg?s=612x612&w=gi&k=20&c=1CgruA2whtdAK6LOvvXbR6zpeTdWMuz1G__FxOFWe1g=',
    'https://www.mpl.live/blog/wp-content/uploads/2021/05/carrom-board-game.png',
    'https://playerzpot.com/blog/wp-content/uploads/2022/12/CARROM.png',
    'https://www.mpl.live/blog/wp-content/uploads/2021/01/shutterstock_1294275547-scaled.jpg',
    'https://clipart-library.com/img/2008830.jpg',
    'https://www.studyvillage.com/attachments/resources/3235-212350-I2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSMh2pZkKRA_Ig5d_51dxIj-nTUuxFMiMoMkZasowiWwmJ6dnaHP_r_ceSNW_W4yE_zd0&usqp=CAU',
    'https://5.imimg.com/data5/SELLER/Default/2022/2/JD/SS/IF/9281355/sonam-quartz-office-wall-clock-177.jpg',
    'https://media.gettyimages.com/id/948752828/vector/abstract-squares-background.jpg?s=612x612&w=gi&k=20&c=1CgruA2whtdAK6LOvvXbR6zpeTdWMuz1G__FxOFWe1g=',
    'https://www.mpl.live/blog/wp-content/uploads/2021/05/carrom-board-game.png',
    'https://playerzpot.com/blog/wp-content/uploads/2022/12/CARROM.png',
    'https://www.mpl.live/blog/wp-content/uploads/2021/01/shutterstock_1294275547-scaled.jpg',
    'https://clipart-library.com/img/2008830.jpg',
    'https://www.studyvillage.com/attachments/resources/3235-212350-I2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSMh2pZkKRA_Ig5d_51dxIj-nTUuxFMiMoMkZasowiWwmJ6dnaHP_r_ceSNW_W4yE_zd0&usqp=CAU',
    'https://5.imimg.com/data5/SELLER/Default/2022/2/JD/SS/IF/9281355/sonam-quartz-office-wall-clock-177.jpg',
   
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:
               StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.vertical,
                   crossAxisCount: 4,
                   itemCount: images.length,
                   itemBuilder: (BuildContext context, int index) => Container(
                             decoration: BoxDecoration(
                 image: DecorationImage(
                     fit: BoxFit.fill, image: NetworkImage(images[index]))),
                   ),
                   staggeredTileBuilder: (int index) =>
               StaggeredTile.count(2, index.isEven ? 2 : 1),
                   mainAxisSpacing: 4.0,
                   crossAxisSpacing: 4.0,
                 ),
              
            
           
        ));
  }
}




//  GridView.builder(
//         itemCount: 3,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 1, mainAxisSpacing: 10),
//         itemBuilder: (context, index) {
//           return StaggeredGrid.count(
//             crossAxisCount: 4,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             children: [
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 2,
//                   mainAxisCellCount: 2,
//                   child: Container(
//                     color: Colors.green,
//                     child: Center(child: Image(image: NetworkImage(images[index]))),
//                   )),
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 2,
//                   mainAxisCellCount: 1,
//                   child: Container(
//                     color: Colors.blue,
//                     child: Center(child: Image(image: NetworkImage(images[1]))),
//                   )),
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 1,
//                   mainAxisCellCount: 2,
//                   child: Container(
//                     color: Colors.yellow,
//                      child: Center(child: Image(image: NetworkImage(images[2]))),
//                   )),
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 1,
//                   mainAxisCellCount: 1,
//                   child: Container(
//                     color: Colors.brown,
//                      child: Center(child: Image(fit: BoxFit.fill,image: NetworkImage(images[3]))),
//                   )),
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 2,
//                   mainAxisCellCount: 2,
//                   child: Container(
//                     color: Colors.red,
//                     child: const Center(child: Icon(Icons.send)),
//                   )),
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 1,
//                   mainAxisCellCount: 2,
//                   child: Container(
//                     color: Colors.blue,
//                     child: const Center(child: Icon(Icons.bed)),
//                   )),
//               StaggeredGridTile.count(
//                   crossAxisCellCount: 1,
//                   mainAxisCellCount: 1,
//                   child: Container(
//                     color: Colors.brown,
//                     child: const Center(child: Icon(Icons.map)),
//                   )),
//             ],
//           );
//         },
//       ),