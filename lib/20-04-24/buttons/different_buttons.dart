import 'package:flutter/material.dart';

class DifferentButtons extends StatelessWidget {
  const DifferentButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                child: const Text("Runded Color Material Button"),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xff374ABE), Color(0xff64B6FF)],
              )),
              child: TextButton(
                child: const Text(
                  "Gradient Material Button",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload,
                    color: Colors.white,
                  )),
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                icon: const Icon(
                  Icons.file_download_outlined,
                  color: Colors.black,
                ),
                label: const Text(
                  "Download",
                  style: TextStyle(color: Colors.black),
                )),
            Container(height: 50, 
              decoration: BoxDecoration(
                color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 2)),
              child: IconButton(
                icon: const Icon(Icons.share,color: Colors.white,),
                onPressed: () {},
                
              ),
            ),
            IconButton(
                icon: const Icon(Icons.message,),
                onPressed: () {},
                
              ),
          ]),
        ),
      ),
    );
  }
}
