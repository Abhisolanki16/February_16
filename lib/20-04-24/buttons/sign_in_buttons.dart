import 'package:flutter/material.dart';

import '../../widgets.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white60,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 50,
                  width: 220,
                  child: Custom_Sign_In(
                    bgcolor: Colors.white,
                    fgcolor: Colors.black,
                    button_icon: Icon(Icons.apple),
                    title: "Sign in with Apple",
                    borderColor: Colors.white,
                    borderWidth: 0,
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 220,
                  child: Custom_Sign_In(
                    borderColor: Colors.black,
                    borderWidth: 1,
                    bgcolor: Colors.white,
                    fgcolor: Colors.black,
                    button_icon: Icon(Icons.apple),
                    title: "Sign in with Apple",
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 220,
                  child: Custom_Sign_In(
                    borderColor: Colors.black,
                    borderWidth: 1,
                    bgcolor: Colors.black,
                    fgcolor: Colors.white,
                    button_icon: Icon(Icons.apple),
                    title: "Sign in with Apple",
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.white,
                    height: 50,
                    width: 220,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/google.png'),
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    height: 50,
                    width: 220,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/google.png'),
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue.shade800,
                    height: 50,
                    width: 20,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Facebook_icon.svg/2048px-Facebook_icon.svg.png'),
                        ),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/previews/023/986/731/original/twitter-logo-twitter-logo-transparent-twitter-icon-transparent-free-free-png.png'),
                        ),
                        Text(
                          "Sign in with Twitter",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png'),
                        ),
                        Text(
                          "Sign in with Microsoft",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png'),
                        ),
                        Text(
                          "Sign in with Microsoft",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
