import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Flexible(
              child: Container(
            alignment: Alignment.center,
            color: Colors.black12,
          )),
          Row(
            children: [
              Flexible(
                  child: Container(
                color: Colors.yellow,
                height: 150,
              )),
              Flexible(
                  child: Container(
                color: Colors.red,
                height: 150,
              )),
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: Container(
                color: Colors.blue,
                height: 150,
              )),
              Flexible(
                  child: Container(
                color: Colors.green,
                height: 150,
              )),
            ],
          ),
          Flexible(
              child: Container(
            alignment: Alignment.center,
            color: Colors.black12,
          )),
        ]),
      ),
    );
  }
}
