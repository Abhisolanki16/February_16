import 'package:flutter/material.dart';

class ExpFlexDemo extends StatelessWidget {
  const ExpFlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("app")),
      body: Column(
        children: [
          Row(children: [
            Flexible(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                height: 100,
                width: 197,
                decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    border: Border.all(width: 5, color: Colors.cyan)),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(width: 5, color: Colors.cyan),
                  ),
                  child: const Text(
                    "Expanded",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 25),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(width: 5, color: Colors.cyan)),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(width: 5, color: Colors.cyan)),
                    child: const Text(
                      "Flexible",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          backgroundColor: Colors.red),
                    )),
              ),
            ),
          ]),
          Row(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.cyan),
                        color: Colors.blue.shade800),
                    height: 100,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(width: 5, color: Colors.cyan),
                      ),
                      child: const Text(
                        "Expanded",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.cyan),
                        color: Colors.blue.shade800),
                    height: 100,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(width: 5, color: Colors.cyan),
                      ),
                      child: const Text(
                        "Expanded",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(width: 5, color: Colors.cyan),
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(width: 5, color: Colors.cyan),
                        ),
                        child: const Text("Flexible",style: TextStyle(color: Colors.white, fontSize: 18),)),
                  )),
              Flexible(
                  flex: 3,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(width: 5, color: Colors.cyan),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                        decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 5, color: Colors.cyan),
                      
                    ),
                    child: Text("Flexible",style: TextStyle(color: Colors.white, fontSize: 18),),

                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    height: 100,
                    width: 98,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
