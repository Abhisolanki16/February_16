import 'package:flutter/material.dart';
import 'rows_columns_3.dart';

class RowAndColumnExample2 extends StatelessWidget {
  const RowAndColumnExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff8d43b3)),
                  )),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF2AA650),
                      ),
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Flexible(
                              child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff58aaE8),
                            ),
                          )),
                          const SizedBox(
                            height: 5,
                          ),
                          Flexible(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xffE74e33),
                                ),
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF2AA650),
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RowAndColumnExample3(),
              ));
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
