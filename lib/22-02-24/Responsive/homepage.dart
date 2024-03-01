import 'package:flutter/material.dart';
import 'desktop_body.dart';
import 'mobile_body.dart';
import 'responsive_layout.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResposiveLayout(desktopBody: const DesktopBody(),mobileBody: const MobileBody()),
    );
  }
}
