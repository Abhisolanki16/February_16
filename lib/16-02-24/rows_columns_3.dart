import 'package:flutter/material.dart';
import 'rows_columns.dart';

class RowAndColumnExample3 extends StatelessWidget {
  const RowAndColumnExample3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF2AA650),),
                    
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Flexible(
                            flex: 2,
                            child: Container(margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xff58aaE8),),
                              
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Flexible(
                            flex: 4,
                            child: Container(margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffE74e33),),
                              
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
                flex: 1,
                child: Container(margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xff8d43b3),),
                 
                )),
          ],
        ),
      ),
    ),  floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  RowAndColumnExample(),
              ));
        },
        child: const Icon(Icons.arrow_right_alt),
      ),);
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.height,
    required this.colorCo,
    required this.width,
  });

  final double height;
  final double width;

  final Color colorCo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: height / 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colorCo),
    );
  }
}

// Widget CustomContainer {
//   final BoxDecoration decoration;
//   
//   return Container(
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//   );
// }

