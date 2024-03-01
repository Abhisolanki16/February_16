import 'package:flutter/material.dart';
import 'rows_columns_2.dart';

// ignore: must_be_immutable
class RowAndColumnExample extends StatelessWidget {
  var size, height, width;

  RowAndColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(20)),
                height: height / 9,
              ),
            ),
            Row(
              
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    height: height / 9,
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    height: height / 9,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple, borderRadius: BorderRadius.circular(20)),
              height: height / 2,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              height: height / 9,
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const RowAndColumnExample2(),));
      }, child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
